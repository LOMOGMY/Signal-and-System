a=[1 -0.8];
b=[2 0 -1];
[H1, omega1]=freqz(b,a,4);
[H2, omega2]=freqz(b,a,4,'whole');