f = fopen('chirp.bin', 'rb');
x = fread(f, inf, 'int16');
fclose(f);

audiowrite('chirpmat.wav', int16(x), 10000);
