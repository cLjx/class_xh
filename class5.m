Fs1=1000; Fs2=300; Fs3=200;
Tp=0.064;
T1=1/Fs1; T2=1/Fs2; T3=1/Fs3;
N1=floor(Tp*Fs1); N2=floor(Tp*Fs2); N3=floor(Tp*Fs3);
n1=0:N1-1; n2=0:N2-1; n3=0:N3-1;

Xa1=444.128*exp(-50*sqrt(2)*pi*n1*T1).*sin(50*sqrt(2)*pi*n1*T1).*uDT(n1*T1);
subplot(321);
stem(0:length(Xa1)-1,Xa1,'.');
title('Fs=1000Hz');
subplot(322);
y1=T1*fft(Xa1,N1);
plot(n1/Tp,abs(y1));
grid on;
title('T*FT[xa(nT)],Fs=1000Hz');

Xa2=444.128*exp(-50*sqrt(2)*pi*n2*T2).*sin(50*sqrt(2)*pi*n2*T2).*uDT(n2*T2);
subplot(323);
stem(0:length(Xa2)-1,Xa2,'.');
title('Fs=300Hz');
subplot(324);
y2=T2*fft(Xa2,N2);
plot(n2/Tp,abs(y2));
grid on;
title('T*FT[xa(nT)],Fs=300Hz');

Xa3=444.128*exp(-50*sqrt(2)*pi*n3*T3).*sin(50*sqrt(2)*pi*n3*T3).*uDT(n3*T3);
subplot(325);
stem(0:length(Xa3)-1,Xa3,'.');
title('Fs=200Hz');
subplot(326);
y3=T3*fft(Xa3,N3);
plot(n3/Tp,abs(y3));
grid on;
title('T*FT[xa(nT)],Fs=200Hz');