syms a
t = sym('t')
x1 = sym('cos(pi*t/5)');
x2 = sym('sin(pi*t/5)');

x3 = exp(1i*2*pi*t/3)+exp(1i*pi*t)
x3re = compose('real(x3)',x3);
x3im = compose('imag(x3)',x3);

Ea = int(x1^2,t,-a,a);
Pa = Ea/(2*a);
Eb = int(x2^2,t,-a,a);
Pb = Eb/(2*a);
EC = int(x3.*conj(x3),t,-a,a);
Pc = EC/(2*a);
subplot(3,1,1)
fplot(Pa,[0.1,60]);
xlabel('a');
ylabel('Pa');
grid on;
subplot(3,1,2)
ezplot(Pb,[0.1,60]);
xlabel('b');
ylabel('Pb');
grid on;
subplot(3,1,3)
ezplot(Pc,[0.1,60]);
xlabel('c');
ylabel('Pc');
grid on;
