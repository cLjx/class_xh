%% 1
x1=ones(1,4);
x1_8=fft(x1,8);
x1_16=fft(x1,16);
figure
subplot(2,1,1);
stem(0:7,[1 1 1 1 0 0 0 0 ],'.');
title('x1波形');
subplot(2,1,2);
stem(0:7,abs(x1_8),'.');
title('x1的8点FFT');
figure
subplot(2,1,1);
stem(0:15,[1 1 1 1 0 0 0 0  0 0 0 0  0 0 0 0],'.');
title('x1波形');
subplot(2,1,2);
stem(0:15,abs(x1_16),'.');
title('x1的16点FFT');

%% 2
x2=[1:4 4:-1:1];
x2_8=fft(x2,8);
x2_16=fft(x2,16);
figure
subplot(2,1,1);
stem(x2,'.');
title('x2波形');
subplot(2,1,2);
stem(0:7,abs(x2_8),'.');
title('x2的8点FFT');
figure
subplot(2,1,1);
stem(x2,'.');
title('x2波形');
subplot(2,1,2);
stem(0:15,abs(x1_16),'.');
title('x2的16点FFT');

%% 3
n = [0:15]
x4=cos(pi/4.*n);
x4_8=fft(x4,8);
x4_16=fft(x4,16);
figure
subplot(2,1,1);
stem(x4,'.');
title('x4波形');
subplot(2,1,2);
stem(0:7,abs(x4_8),'.');
title('x4的8点FFT');
figure
subplot(2,1,1);
stem(x4,'.');
title('x4波形');
subplot(2,1,2);
stem(0:15,abs(x4_16),'.');
title('x4的16点FFT');

%% 4
clear
n=0:16;
t=n./64;
x6=cos(8*pi.*t)+cos(16*pi.*t)+cos(20*pi.*t);
x6_32=fft(x6,32);
figure
subplot(2,1,1);
stem(n,x6,'.');
title('x6波形');
subplot(2,1,2);
stem(0:31,abs(x6_32),'.');
title('x6的16点FFT');

clear
n=0:32;
t=n./64;
x6=cos(8*pi.*t)+cos(16*pi.*t)+cos(20*pi.*t);
x6_32=fft(x6,32);
figure
subplot(2,1,1);
stem(n,x6,'.');
title('x6波形');
subplot(2,1,2);
stem(0:31,abs(x6_32),'.');
title('x6的32点FFT');

clear
n=0:64;
t=n./64;
x6=cos(8*pi.*t)+cos(16*pi.*t)+cos(20*pi.*t);
x6_32=fft(x6,64);
figure
subplot(2,1,1);
stem(n,x6,'.');
title('x6波形');
subplot(2,1,2);
stem(0:63,abs(x6_32),'.');
title('x6的64点FFT');

%% thing
x2=[1:4 4:-1:1];
x3=[4:-1:1 1:4];
subplot(2,1,1)
stem(x2);
subplot(2,1,2)
stem(x3);

r10=ones(1,10);
r10_16=fft(r10,16);
stem((-32:31)./8.*pi,[r10_16 r10_16 r10_16 r10_16],'.');