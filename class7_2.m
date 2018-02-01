[xt,t]=xtg(1000);
figure
yt=fftfilt(b,xt);
Hyk=abs(fft(yt));
subplot(2,1,1);
plot(t,yt);
subplot(2,1,2);
stem(Hyk);
axis([80 120 min(Hyk),max(Hyk)]);