import numpy as np
from scipy.io import wavfile

f = open('chirp.bin', 'rb')
y = f.read()
f.close()

x = np.frombuffer(y, dtype=np.int16)

wavfile.write('chirppy.wav', 10000, x)
