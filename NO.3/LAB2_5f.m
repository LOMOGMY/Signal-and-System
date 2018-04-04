syms n
h1 = filter([1],[1,-(3/5)],[1 zeros(1,19)])

h_2 = (3/5)^(n*(n+1)/2)
h2 = [zeros(1,20)]
for i=0:19
    h2(i+1) = subs(h_2,i)
end
un = [ones(1,20)];

z1 = conv(h1,un);
nz = [0:38]
subplot(2,1,1)
stem(nz,z1,'b')
hold on;
stem(nz(21:39),z1(21:length(z1)),'r')

z2 = conv(h2,un);
nz = [0:38]
subplot(2,1,2)
stem(nz,z2,'b')
hold on;
stem(nz(21:39),z2(21:length(z1)),'r')



