nx = -3:1:7;
x = zeros(1,11);
x(4) = 2;
x(6) = 1;
x(7) = -1;
x(8) = 3;
stem(nx,x)
xlabel('n')
ylabel('x[n]')
grid on

