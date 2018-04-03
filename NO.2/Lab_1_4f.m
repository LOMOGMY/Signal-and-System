x=[zeros(1,10) ones(1,11)];

for n = 1 : 21
    y(n) = (n-10)*x(n);
end

n = [-10:10]

stem(n,y)