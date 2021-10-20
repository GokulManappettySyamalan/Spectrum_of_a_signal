Fs=100;
T=1/Fs;
t=0:T:10-T;
%t=0:T:L-1;

S1=0.8*cos(2*pi*15*t);
subplot(4,2,1);
plot(t,S1);
xlabel('Time');
ylabel('Amplitude');
title('Signal 1');

subplot(4,2,2);
sf1=fft(S1);
f_1=(0:length(sf1)-1)*Fs/length(sf1);
plot(f_1,abs(sf1));
xlabel('Frequency');
ylabel('Magnitude');
title('Spectrum of Signal 1');

S2=2*cos(2*pi*30*t);
subplot(4,2,3);
plot(t,S2);
xlabel('Time');
ylabel('Amplitude');
title('Signal 2');

subplot(4,2,4)
sf2=fft(S2);
f_2=(0:length(sf2)-1)*Fs/length(sf2);
plot(f_2,abs(sf2));
xlabel('Frequency');
ylabel('Magnitude');
title('Spectrum of Signal 2');


S=S1+S2;
subplot(4,2,5);
plot(t,S);
xlabel('t');
ylabel('Amplitude');
title('Combined S1 and S2');
subplot(4,2,6);
y=fft(S);
f=(0:length(y)-1)*Fs/length(y);
plot(f,abs(y));
xlabel('Frequency');
ylabel('Magnitude');
title('Spectrum of combined signals');

%{
S=S1+S2;
subplot(4,1,1);
plot(t,S);
xlabel('Time');
ylabel('Amplitude');
%}
%{
subplot(2,1,2);
y=fft(S1);
f=(0:length(y)-1)*Fs/length(y);
plot(f,abs(y));
xlabel('Frequency');
ylabel('Magnitude');
%}