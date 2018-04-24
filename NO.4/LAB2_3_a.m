b = 1;
a = [1,2];
t = [0:0.1:10];
for i=1:length(t)
    if t(i) < 2
        x(i) = 0
    else
        x(i) = 1
    end
end
s=lsim(b,a,x,t)
plot(t,s,'--','color',[1 0 0])