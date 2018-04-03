n=[-2:2];
x1=[0 0 1 0 0];
x2=[0 0 2 0 0];
y1=sin((pi/2)*x1);
y2=sin((pi/2)*x2);

subplot(2,2,1);
stem(n,x1);xlabel('n');ylabel('x1[n]');
subplot(2,2,2);
stem(n,x2);xlabel('n');ylabel('x2[n]');
subplot(2,2,3);
stem(n,y1);xlabel('n');ylabel('y1[n]');
subplot(2,2,4);
stem(n,y2);xlabel('n');ylabel('y2[n]');