%% Following to corroborate it is time-variance
%Let x_1[n] = ¦Ä[n]
n=[-4:4] % [-4 -3 -2 -1 0 1 2 3 4]
x1=[0 0 0 0 1 0 0 0 0];
y1=[0 0 0 0 0 0 0 0 0];
%Let x_2[n] = ¦Ä[n-1]
x2=[0 0 0 0 0 1 0 0 0];
y2=[0 0 0 0 0 1 0 0 0];

subplot(2,1,1)
stem(n,y1)
xlabel('x_1[n] = ¦Ä[n]')
ylabel('y_1[n]')
subplot(2,1,2)
stem(n,y2)
xlabel('x_2[n] = ¦Ä[n-1]')
ylabel('y_2[n]')

%% Following to corroborate it is breach stability
%Let x_1[n] = u[n]
u = Heaviside([-10:10]);
nn = [-10:10]
for n = 1 : 21
    y(n) = (n-10)*x(n);
end
stem(nn,y)


