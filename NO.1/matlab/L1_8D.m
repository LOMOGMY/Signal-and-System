syms a
t = sym('t')
x1 = sym('cos(pi*t/5)');
x2 = sym('sin(pi*t/5)');

x3 = exp(1i*2*pi*t/3)+exp(1i*pi*t)
x3re = compose('real(x3)',x3);
x3im = compose('imag(x3)',x3);

Ea = int(x1^2,t,-a,a);
Ea_ = limit(Ea,a,5)
%¡üT = 10, so T/2 = 5
Eb = int(x2^2,t,-a,a);
Eb_ = limit(Eb,a,5)
%¡üT = 10, so T/2 = 5
EC = int(x3.*conj(x3),t,-a,a);
EC_ = limit(EC,a,3)
%¡üT = 6, so T/2 = 3

subplot(3,1,1)
fplot(Ea,[0,30]);
xlabel('a');
ylabel('Ea');
grid on;
subplot(3,1,2)
fplot(Eb,[0,30]);
xlabel('b');
ylabel('Eb');
grid on;
subplot(3,1,3)
ezplot(EC,[0,30]);
xlabel('c');
ylabel('Ec');
grid on;
