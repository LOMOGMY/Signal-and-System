nx = -3:1:7;
x = zeros(1,11);
x(4) = 2;
x(6) = 1;
x(7) = -1;
x(8) = 3;
subplot(2,2,1)
ny1 = zeros(1,11)
for i = 3:11;
    ny1(i) = x(i-2)
end
stem(nx,ny1)
xlabel('n')
ylabel('y1[n] = x[n-2]')
grid on
%%%%%%%%%%%%%%%
subplot(2,2,2)
ny2 = zeros(1,11)
for i = 1:10
    ny2(i) = x(i+1)
end
stem(nx,ny2)
xlabel('n')
ylabel('y2[n] = x[n+1]')
grid on
%%%%%%%%%%%%%%
subplot(2,2,3)
ny3 = zeros(1,11)
for i = 1:11
    ny3(i) = x(12-i)
end
stem(nx,ny3)
xlabel('n')
ylabel('y3[n] = x[-n]')
grid on
%%%%%%%%%%%%%%%
subplot(2,2,4)
ny4 = zeros(1,11)
for i = 3:11;
    ny4(i) = ny3(i-1)
end
stem(nx,ny4)
xlabel('n')
ylabel('y4[n] = x[-n+1]')
grid on