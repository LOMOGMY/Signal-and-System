x = [ones(1,6)]
y = conv(x,x);
ny = [0:10]
stem(ny,y)
xlabel('n')
ylabel('x[n]¡¤x[n]')