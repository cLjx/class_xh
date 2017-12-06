xn=[1:14,13:-1:1];
N=64;
n1=0:15;
n2=0:31;
fft3=fft(xn,64);
fft2=fft(xn,32);%xk(32)
fft1=fft2(1:2:32);%xk(16)
ifft2=ifft(fft2,32);%X32
ifft1=ifft(fft1,16);%X16

subplot(321);
n=0:N-1;
plot(2*n/N,abs(fft3));
grid on;
axis([0,1,0,200]);
title('FT[x(n)]');
subplot(322);
stem(0:length(xn)-1,xn,'.');
title('x(n)三角序列');

%32点
subplot(323);
stem(n2,abs(fft2),'.');
title('32点频域采样');
grid on;
axis([0,16,0,200]);
subplot(324);
stem(n2,ifft2,'.');
title('32点的IDFT[X32(k)]');

%16点
subplot(325);
stem(n1,abs(fft1),'.');
title('16点频域采样');
grid on;
axis([0,8,0,200]);
subplot(326);
stem(n1,ifft1,'.');
title('16点的IDFT[X32(k)]');

