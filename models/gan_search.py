from autoencoder import autoencoder_model
from gan import DCGAN, discriminator_model, generator_model
from keras.optimizers import Adam
import numpy as np
import matplotlib.pyplot as plt
import os
import yfinance as yf

if __name__ == "__main__":
    WINDOW = 32
    Z_DIM = 100
    NUM_FEATURES = 4
    dcgan = DCGAN(generator_model(Z_DIM, NUM_FEATURES), discriminator_model(WINDOW, NUM_FEATURES), Z_DIM)
    dcgan.built = True
    dcgan.load_weights("dcgan_window_32.h5")

    N_data = 5000
    random_latent_vectors = np.random.normal(
        size=(N_data, 100)
    )

    generated_data = dcgan.generator(random_latent_vectors)

    encoder, decoder, autoencoder = autoencoder_model(WINDOW, Z_DIM, NUM_FEATURES)

    if not os.path.exists("autoencoder_gan_window_32.h5"):
        optimizer = Adam(learning_rate=0.001)
        autoencoder.compile(optimizer=optimizer, loss="binary_crossentropy")
        autoencoder.fit(generated_data, generated_data, epochs=50, batch_size=32, shuffle=True)
        autoencoder.save_weights("autoencoder_gan_window_32.h5")

    autoencoder.load_weights("autoencoder_gan_window_32.h5")
    embeddings = encoder.predict(generated_data)




