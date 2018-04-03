syms a
t = sym('t')
x1 = sym('cos(pi*t/5)');
x2 = sym('sin(pi*t/5)');
Ea = int(x1^2,t,-a,a);
Pa = Ea/(2*a);
Eb = int(x2^2,t,-a,a);
Pb = Eb/(2*a);
simplify(Pa+Pb)