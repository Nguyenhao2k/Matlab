time = 0:.01:1;
y = cos(time.*pi.*25);

subplot(2,1,1);
plot(time,y);
xlabel('time(t)');
ylabel('amplitude');
grid;
title('y = cos(time.*pi.*25)');
subtitle('Team5: NgocNguyen DaiDuc');

subplot(2,1,2);
plot(time,fade(y,0.5));
xlabel('time(t)');
ylabel('amplitude');
title('y = cos(time.*pi.*25) with fade = 0.5'); 
grid;