t=[0:0.5:10]
b=[1]
a=[1 0.5]
s=step(b,a,t) 
subplot(2,1,1)
plot(t,s,'--','color',[0.1 0.5 1])
xlabel('t')
ylabel('step')
h=impulse(b,a,t)
subplot(2,1,2)
plot(t,h,'--','color',[1 0.1 0.5])
xlabel('t')
ylabel('Impulse')