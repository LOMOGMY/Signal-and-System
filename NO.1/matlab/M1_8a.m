x1 = sym('cos(pi*t/5)')
x2 = sym('sin(pi*t/5)')
x3 = sym('exp(i*2*pi*t/3)+exp(i*pi*t)');
subplot(2,2,1)
ezplot(x1,-10,10)
hold on;
subplot(2,2,2)
ezplot(x2,-10,10)
hold on;
ezplot(x3_real)
x3_real = sym('cos(2*pi*t/3)+cos(pi*t)')
x3_imag = sym('sin(2*pi*t/3)+sin(pi*t)')