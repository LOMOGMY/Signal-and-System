n= -20:100 ;
x1=exp(1i*pi/4*n);
x2=sin(pi*n/8+pi/16);
x3=exp(log(9/10)*n);
x4=n+1;

subplot(2,2,1);
stem(n,real(x1),'r');hold on;
stem(n,imag(x1),'g');xlabel('n');ylabel('x1[n]');legend('real part','imag part')
grid on;
subplot(2,2,2);
stem(n,x2);xlabel('n');ylabel('x2[n]');
grid on;
subplot(2,2,3);
stem(n,x3);xlabel('n');ylabel('x3[n]');
grid on;
subplot(2,2,4);
stem(n,x4);xlabel('n');ylabel('x4[n]');
grid on;