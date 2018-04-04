x = [ones(1,6)]
for i=1:6
    h(1,i)=i-1
end
y2=conv(h,x)
ny2 = [0:10]
stem(ny2,y2)
xlabel('n')
ylabel('x[n]*x[n]')