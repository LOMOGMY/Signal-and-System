syms n
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
stem([0:99],yn(1:100))
