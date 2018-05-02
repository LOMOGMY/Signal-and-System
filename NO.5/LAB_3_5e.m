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
for n=0:N
    r=mod(n,16);
    x2_(n+1)=x2(r+1);
end
for n=0:N
    r=mod(n,32);
    x3_(n+1)=x3(r+1);
end

a = (1/8)*fft(x1);
b = (1/16)*fft(x2);
c = (1/32)*fft(x3);

figure;
subplot(3,1,1);
%stem([0:7],real(a),'r');hold on;
%stem([0:7],imag(a),'g');xlabel('n');ylabel('a1');grid on;legend('real part','imag part')
stem([0:7],abs(a),'r');xlabel('n');ylabel('a1');grid on;
subplot(3,1,2);
%stem([0:15],real(b),'r');hold on;
%stem([0:15],imag(b),'g');xlabel('n');ylabel('a2');grid on;legend('real part','imag part')
stem([0:15],abs(b),'r');xlabel('n');ylabel('a2');grid on;
subplot(3,1,3);
%stem([0:31],real(c),'r');hold on;
%stem([0:31],imag(c),'g');xlabel('n');ylabel('a3');grid on;legend('real part','imag part')
stem([0:31],abs(c),'r');xlabel('n');ylabel('a3');grid on;


