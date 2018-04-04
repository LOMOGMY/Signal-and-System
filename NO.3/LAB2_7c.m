nx=[0:24];
nh=[0:14];
for i=1:length(nx)
    x(i)=(1/2)^(nx(i)-2) *u(nx(i)-2);
end
h=fu(nh+2);

y=conv(h,x);
ny=[0:38];
figure;
stem(ny,y,'r');xlabel('n');ylabel('y[n]');%red is correct
hold on;
stem(ny(16:length(ny)),y(16:length(y)),'b');%blue is inveracious