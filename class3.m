a=[3 4 -15 18 -12];
b=[3 16 44 56 32];
[R P K] = residuez(b,a)
clear
b=[2 -1.6 -0.9];
a=[1 -2.5 1.96 -0.48];
subplot(1,2,1);
zplane(b,a);legend('零点','极点');
clear
b=[1 -1];
a=[1 -0.9 -0.65 0.873 0];
subplot(1,2,2);
zplane(b,a);legend('零点','极点');
clear
figure
b=[1 0 0];
a=[1 -3/4 1/8];
[h w]=freqz(b,a,'whole');
subplot(2,1,1);
plot(w,abs(h));grid on
title('离散系统幅频特性曲线');
xlabel('\omega(rad/s)'),ylabel('Magnitude');
subplot(2,1,2);
plot(w,angle(h));grid on
title('离散系统相频特性曲线');
xlabel('\omega(rad/s)'),ylabel('Phase');