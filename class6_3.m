xn=[-4,-2,0,-4,-6,-4,-2,-4,-6,-6,-4,-4,-6,-6,-2,6,12,8,...
0,-16,-38,-60,-84,-90,-66,-32,-4,-2,-4,8,12,12,10,6,6,6,...
4,0,0,0,0,0,-2,-4,0,0,0,-2,-2,0,0,-2,-2,-2,-2,0];
B=[0.09036 0.09036*2 0.09036];
A=[1,-1.2686,0.7051];
clear B A
B=bd;
A=ad;
yn=filter(B,A,xn);
figure;
subplot(2,2,1);
stem(0:length(xn)-1,xn,'.');xlabel('ÂË²¨Ç°');
subplot(2,2,2);
stem(0:length(yn)-1,yn,'.');xlabel('ÂË²¨ºó');

subplot(2,2,3);
stem(0:length(xn)-1,xn,'.');
N=64;
n=0:N-1;
fftx=fft(xn,64);
plot(2*n/N,abs(fftx));xlabel('\omega/\pi');

subplot(2,2,4);
stem(0:length(yn)-1,yn,'.');
N=64;
ffty=fft(yn,64);
plot(2*n/N,abs(ffty));xlabel('\omega/\pi');
