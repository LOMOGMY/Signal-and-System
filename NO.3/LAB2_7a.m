nh=[-1:1];
h=[2 0 -2];
nx=[0 1 2];
x=[1 0 1];
y=conv(h,x);
ny=[-1:3];
stem(ny,y);xlabel('n');ylabel('y[n]');