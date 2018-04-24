x = [1 1 1 1 1 1];
h = [0 1 2 3 4 5];
y = filter(h,1,x);
ny = [0:5];
stem(ny,y)