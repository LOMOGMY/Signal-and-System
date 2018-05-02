x1=[ones(1,8)];
nx1=[0:length(x1)-1];

x2=[ones(1,8) zeros(1,8)];
nx2=[0:length(x2)-1];

x3=[ones(1,8) zeros(1,24)];
nx3=[0:length(x3)-1];

N=63;
for n=0:N
    t = mod(n,8);
    x1_(n+1)=x1(t+1);
end
subplot(3,1,1);
stem(x1_);xlabel('n');ylabel('x1[n]');

for n=0:N
    r=mod(n,16);
    x2_(n+1)=x2(r+1);
end
subplot(3,1,2)
stem(x2_);xlabel('n');ylabel('x2[n]');

for n=0:N
    r=mod(n,32);
    x3_(n+1)=x3(r+1);
end
subplot(3,1,3)
stem(x3_);xlabel('n');ylabel('x3[n]');