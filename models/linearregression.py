import tensorflow as tf
import pandas as pd
import numpy as np
import matplotlib.pyplot as plt
import matplotlib.animation as animation

EPOCHS = 10000

data = {
    "EURUSD": "./data/EURUSD_D1.csv",
    "USDJPY": "./data/USDJPY_D1.csv",
    "GBPUSD": "./data/GBPUSD_D1.csv",
    "USDCAD": "./data/USDCAD_D1.csv",
    "USDCHF": "./data/USDCHF_D1.csv",
}

data = {k: pd.read_table(v, names=["date", "time", "open", "high", "low", "close", "volume"]) for k,v in data}

num = data.shape[0]

X = tf.convert_to_tensor(np.column_stack((np.ones((num,)), np.arange(num))), dtype="float32")
Y = tf.convert_to_tensor(data["open"].to_numpy().reshape((-1, 1)), dtype="float32")
B = tf.Variable(tf.zeros((2, 1), dtype="float32"))

optimizer = tf.keras.optimizers.legacy.Adam(learning_rate=1e-3)
loss_fn = tf.keras.losses.MeanSquaredError()

B_history = []

for epoch in range(EPOCHS):
    with tf.GradientTape() as tape:
        loss = loss_fn(tf.linalg.matmul(X, B), Y)
    grads = tape.gradient(loss, B)
    optimizer.apply_gradients(zip([grads], [B]))

    if epoch % 100 == 0:
        print(loss)
        B_history.append(tf.identity(B))

fig, ax = plt.subplots()

artists = []

xrange = np.arange(num)
ax.plot(xrange, data["open"])
ax.set_ylim((0, 2))

i = 0
for epoch in range(EPOCHS):
    if epoch % 100 == 0:
        b = B_history[i]
        line = ax.plot(xrange, tf.linalg.matmul(X, b).numpy().flatten())
        artists.append(line)
        i += 1

for i in range(10):
    b = B_history[len(B_history)-1]
    line = ax.plot(xrange, tf.linalg.matmul(X, b).numpy().flatten())
    artists.append(line)

ani = animation.ArtistAnimation(fig=fig, artists=artists, interval=200, repeat_delay=1000)
ani.save(filename="reganim.gif", writer="pillow")
plt.show()
