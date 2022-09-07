s1 = audioread('bassdrum.wav');
s2 = audioread('bleeep.wav');

Fs = 8000;
y1 = mixer(s1, s2);
y2 = fade(y1, 0.5);
y3 = delay(y2, 5, Fs);
y4 = repeat(y3, 5);

sound(y4, 8000)
audiowrite('nguyen',y4, Fs);
