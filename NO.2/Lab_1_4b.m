x=[zeros(1,10) ones(1,11)];

for n = 1 : 20
    y(n) = x(n) + x(n+1);
end

subplot(2,1,1);
stem([-5:9],x(6:20));
xlabel('n');
ylabel('x[n]');
subplot(2,1,2);
stem([-6:9],y(4:19));
xlabel('n');
ylabel('y[n]');