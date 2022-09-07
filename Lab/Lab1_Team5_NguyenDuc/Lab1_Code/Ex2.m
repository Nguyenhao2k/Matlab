%compexp.m produces a 3D plot of a decaying complex exponential,
% with subplots of magnitude and phase and of real and imaginary
% components below it.
compexp(1,0.5); %reduce the frequency by half
%compexp(0.5,1);%decay faster

%produce magnitude and phase plots; t vs |y(t)| and t vs. <y(t).

subplot(3,2,3),plot(t,abs(y)),xlabel('t'),
ylabel('Magnitude'),title('Magnitude - |y(t)|');

subplot(3,2,4),plot(t,angle(y)),xlabel('t'),
ylabel('Angle'),title('Phase - Arg(y(t))');

%produce real and imag plots; t vs |y(t)| and t vs. <y(t).

subplot(3,2,5),plot(t,real(y)),xlabel('t'),
ylabel('Magnitude'),title('Re(y(t))');
suptitle('NgocNguyen_DaiDuc');
subplot(3,2,6),plot(t,imag(y)),xlabel('t'),
ylabel('Angle'),title('Im(y(t))');
