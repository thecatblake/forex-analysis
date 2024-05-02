import numpy as np
import pandas as pd
from keras import datasets
from keras.layers import Input, Dense, Conv1D, Conv1DTranspose, Flatten, Reshape, BatchNormalization
from keras.models import Model
import keras.backend as K
from keras.optimizers.legacy import Adam
import matplotlib.pyplot as plt
from sklearn.preprocessing import StandardScaler, MinMaxScaler
from sklearn.pipeline import make_pipeline
from sklearn.impute import SimpleImputer
from sklearn.compose import make_column_selector, make_column_transformer
import mplfinance as mpf


def autoencoder_model(window, embedding_dim, num_features):
    encoder_input = Input(shape=(window, num_features))
    x = Conv1D(32, 3, strides=2, activation='relu', padding="same")(encoder_input)
    x = Conv1D(64, 3, strides=2, activation='relu', padding="same")(x)
    x = Conv1D(128, 3, strides=2, activation='relu', padding="same")(x)
    shape_before_flattening = K.int_shape(x)[1:]
    x = Flatten()(x)
    x = BatchNormalization()(x)
    encoder_output = Dense(embedding_dim, name="encoder_output")(x)
    encoder = Model(encoder_input, encoder_output)

    decoder_input = Input(shape=(embedding_dim,), name="decoder_input")
    x = Dense(np.prod(shape_before_flattening))(decoder_input)
    x = Reshape(shape_before_flattening)(x)
    x = BatchNormalization()(x)
    x = Conv1DTranspose(128, 3, strides=2, activation='relu', padding="same")(x)
    x = Conv1DTranspose(64, 3, strides=2, activation='relu', padding="same")(x)
    x = Conv1DTranspose(32, 3, strides=2, activation='relu', padding="same")(x)
    decoder_output = Conv1D(4, 3, strides=1, activation="relu", padding="same")(x)
    decoder = Model(decoder_input, decoder_output)

    return encoder, decoder, Model(encoder_input, decoder(encoder_output))