[d,sr] = audioread('cq.mp3');

e = pvoc(d, 2);
f = resample(e, 2, 1); 
soundsc(f,sr)

