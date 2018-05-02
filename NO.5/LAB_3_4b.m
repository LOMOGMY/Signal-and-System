n = -20:100;
n_ = 0:100;
x1=exp(1i*pi/4*n);
x2=sin(pi*n/8+pi/16);
x3=exp(log(9/10)*n);
x4=n+1;

a=[1 -0.25];
b=[1 0.9];
y1=filter(b,a,x1);
y2=filter(b,a,x2);
y3=filter(b,a,x3);
y4=filter(b,a,x4);
figure;
subplot(2,2,1);
stem(n_,real(y1(21:121)),'r');hold on;
stem(n_,imag(y1(21:121)),'g');xlabel('n');ylabel('y1[n]');grid on;legend('real part','imag part')
subplot(2,2,2);
stem(n_,y2(21:121));xlabel('n');ylabel('y2[n]');grid on;
subplot(2,2,3);
stem(n_,y3(21:121));xlabel('n');ylabel('y3[n]');grid on;
subplot(2,2,4);
stem(n_,y4(21:121));xlabel('n');ylabel('y4[n]');grid on;