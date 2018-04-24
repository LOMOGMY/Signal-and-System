x=[ones(1, 6) zeros(1,5)];
h=[0:5 zeros(1,4)];
y2=filter(h,1,x);
stem([0:10],y2);