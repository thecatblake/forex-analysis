import numpy as np
import tensorflow as tf
from keras import datasets, utils, models, layers, optimizers, metrics, losses
import keras
import matplotlib.pyplot as plt


class DCGAN(models.Model):
    def __init__(self, generator, discriminator, latent_dim):
        super(DCGAN, self).__init__()
        self.generator = generator
        self.discriminator = discriminator
        self.latent_dim = latent_dim

    def compile(self, d_optimizer, g_optimizer):
        super(DCGAN, self).compile()
        self.loss_fn = losses.BinaryCrossentropy()
        self.d_optimizer = d_optimizer
        self.g_optimizer = g_optimizer
        self.d_loss_metric = metrics.Mean("d_loss")
        self.g_loss_metric = metrics.Mean("g_loss")

    @property
    def metrics(self):
        return [self.d_loss_metric, self.g_loss_metric]

    def train_step(self, real_images):
        batch_size = tf.shape(real_images)[0]
        random_latent_vectors = tf.random.normal(
            shape=(batch_size, self.latent_dim)
        )

        with tf.GradientTape() as gen_tape, tf.GradientTape() as disc_tape:
            generated_images = self.generator(random_latent_vectors, training=True)
            real_predictions = self.discriminator(real_images, training=True)
            fake_predictions = self.discriminator(generated_images, training=True)

            real_labels = tf.ones_like(real_predictions)
            real_noisy_labels = real_labels + 0.1 * tf.random.uniform(tf.shape(real_predictions))
            fake_labels = tf.zeros_like(fake_predictions)
            fake_noisy_labels = fake_labels - 0.1 * tf.random.uniform(tf.shape(fake_predictions))
            d_real_loss = self.loss_fn(real_noisy_labels, real_predictions)
            d_fake_loss = self.loss_fn(fake_noisy_labels, fake_predictions)
            d_loss = (d_real_loss + d_fake_loss) / 2.0
            g_loss = self.loss_fn(real_labels, fake_predictions)

        disc_grads = disc_tape.gradient(
            d_loss, self.discriminator.trainable_variables
        )
        gen_grads = gen_tape.gradient(
            g_loss, self.generator.trainable_variables
        )
        self.d_optimizer.apply_gradients(zip(disc_grads, self.discriminator.trainable_variables))
        self.g_optimizer.apply_gradients(zip(gen_grads, self.generator.trainable_variables))
        self.d_loss_metric.update_state(d_loss)
        self.g_loss_metric.update_state(g_loss)

        return {m.name: m.result() for m in self.metrics}


def discriminator_model(window_size, num_features):
    discriminator_input = layers.Input(shape=(window_size, num_features))
    x = layers.Conv1D(64, kernel_size=4, strides=2, padding="same", use_bias=False)(
        discriminator_input
    )
    x = layers.LeakyReLU(0.2)(x)
    x = layers.Dropout(0.3)(x)
    x = layers.Conv1D(
        128, kernel_size=4, strides=2, padding="same", use_bias=False
    )(x)
    x = layers.BatchNormalization(momentum=0.9)(x)
    x = layers.LeakyReLU(0.2)(x)
    x = layers.Dropout(0.3)(x)
    x = layers.Conv1D(
        256, kernel_size=4, strides=2, padding="same", use_bias=False
    )(x)
    x = layers.BatchNormalization(momentum=0.9)(x)
    x = layers.LeakyReLU(0.2)(x)
    x = layers.Dropout(0.3)(x)
    x = layers.Conv1D(
        1,
        kernel_size=4,
        strides=1,
        padding="valid",
        use_bias=False,
        activation="sigmoid",
    )(x)
    discriminator_output = layers.Flatten()(x)

    discriminator = models.Model(discriminator_input, discriminator_output)
    return discriminator


def generator_model(z_dim, num_features):
    generator_input = layers.Input(shape=(z_dim,))
    x = layers.Reshape((1, z_dim))(generator_input)
    x = layers.Conv1DTranspose(
        512, kernel_size=4, strides=1, padding="valid", use_bias=False
    )(x)
    x = layers.BatchNormalization(momentum=0.9)(x)
    x = layers.LeakyReLU(0.2)(x)
    x = layers.Conv1DTranspose(
        256, kernel_size=4, strides=2, padding="same", use_bias=False
    )(x)
    x = layers.BatchNormalization(momentum=0.9)(x)
    x = layers.LeakyReLU(0.2)(x)
    x = layers.Conv1DTranspose(
        128, kernel_size=4, strides=2, padding="same", use_bias=False
    )(x)
    x = layers.BatchNormalization(momentum=0.9)(x)
    x = layers.LeakyReLU(0.2)(x)
    generator_output = layers.Conv1DTranspose(
        num_features,
        kernel_size=4,
        strides=2,
        padding="same",
        use_bias=False,
        activation="tanh",
    )(x)
    generator = models.Model(generator_input, generator_output)

    return generator

