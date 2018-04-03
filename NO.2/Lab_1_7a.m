f=sym('t*(Heaviside(t)-Heaviside(t-2))');
ezplot(f,[-3:0.5:5]);
xlabel('t');
ylabel('f');
grid on;
axis equal;
%%

f=sym('t*(Heaviside(t)-Heaviside(t-2))');
ezplot(f,[-5:0.5:5]);xlabel('t');ylabel('f(t)');grid on;axis equal;