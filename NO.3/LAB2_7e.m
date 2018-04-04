syms n
h = 0.9^n;
hn = [zeros(1,100)]
for i=0:99
    hn(i+1) = subs(h,i);
end
hn(12:100) = 0
x = cos(n^2)*sin(2*pi*n/5)
for i=0:49
    x0n(i+1) = subs(x,i);
end
x0n(51:100) = 0;
x0n = double(x0n);
for i=50:99
    x1n(i+1) = subs(x,i);
end
x1n(1:50) = 0;
x1n = double(x1n);

y0n = conv(hn,x0n)
y1n = conv(hn,x1n)
subplot(4,1,1)
stem([0:99],y0n(1:100))
ylabel('y0[n]')
subplot(4,1,2)
stem([0:99],y1n(1:100))
ylabel('y1[n]')
subplot(4,1,3)
yn=y1n+y0n;
stem([0:99],yn(1:100))
ylabel('y0[n]+y1[n]')
%%
syms n;
h = 0.9^n;
%hn = [subs(h,[0:10]) zeros(1,89)]
hn = [zeros(1,100)]
for i=0:99
    hn(i+1) = subs(h,i);
end
hn(12:100) = 0
 
x = cos(n^2)*sin(2*pi*n/5)
%xn = [subs(x,[0:99])]
for i=0:99
    xn(i+1) = subs(x,i);
end
xn = double(xn)
yn = conv(hn,xn)
subplot(4,1,4)
stem([0:99],yn(1:100))
xlabel('n')
ylabel('y[n]')
