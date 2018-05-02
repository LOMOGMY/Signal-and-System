n = -20:100;
n_ = 0:100;
a=[1 -0.25];
b=[1 0.9];

x1=exp(1i*pi/4*n);
x2=sin(pi*n/8+pi/16);
x3=exp(log(9/10)*n);
x4=n+1;

y1=filter(b,a,x1);
y2=filter(b,a,x2);
y3=filter(b,a,x3);
y4=filter(b,a,x4);

H1=y1./x1;
H2=y2./x2;
H3=y3./x3;
H4=y4./x4;

figure;
subplot(2,2,1);
stem([0:100],real(H1(21:121)),'r');hold on;
stem([0:100],imag(H1(21:121)),'g');xlabel('n');ylabel('H1[n]');grid on;legend('real part','imag part')
subplot(2,2,2);
stem([0:100],H2(21:121));xlabel('n');ylabel('H2[n]');grid on;
subplot(2,2,3);
stem([0:100],H3(21:121));xlabel('n');ylabel('H3[n]');grid on;
subplot(2,2,4);
stem([0:100],H4(21:121));xlabel('n');ylabel('H4[n]');grid on;
%Obviously,x1 and x3 are eigenfunction.