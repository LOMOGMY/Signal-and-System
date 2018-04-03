x=sym('sin(2*pi*t/T)');
x5=subs(x,'T',5);
ezplot(x5)
xlabel('t')
ylabel('sin(2*pi*t/5)')