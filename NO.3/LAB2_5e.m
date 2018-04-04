syms n
s1 = filter([1],[1,-(3/5)],[1 ones(1,19)])
subplot(2,1,1)
stem([0:19],s1)
xlabel('n')
ylabel('s1[n]')
s2 = [zeros(1,20)];
s2(1) = 1;
for i=0:18
    s2(i+2) = (3/5)^(i+1)*s2(i+1)+1;
end
subplot(2,1,2)
stem([0:19],s2)
xlabel('n')
ylabel('s2[n]')






