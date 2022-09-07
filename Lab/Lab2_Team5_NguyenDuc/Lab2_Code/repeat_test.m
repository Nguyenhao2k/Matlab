load blueslick;
Fs = 8000;
in = blueslick';
N = 4;
out = repeat(in, N);
plot(out);
title('Team 5: NgocNguyen DaiDuc');
sound(out, Fs);
grid;