% y1[n] = (3/5)^n¡¤u[n]
syms n
y1 = filter([1],[1,-(3/5)],[1 zeros(1,19)])
subplot(2,1,1)
stem([0:19],y1)
xlabel('n')
ylabel('h1[n]')
% y2[n] = (3/5)^(n*(n+1)/2)
y_2 = (3/5)^(n*(n+1)/2)
y2 = [zeros(1,20)]
for i=0:19
    y2(i+1) = subs(y_2,i)
end
subplot(2,1,2)
stem([0:19],y2)
xlabel('n')
ylabel('h2[n]')


