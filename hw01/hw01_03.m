clf

X1 = -4:0.1:4;
Y1 = (5 + X1.^2 + X1.^3 + X1.^4) ./ (5 + 5.*X1 + 5.* (X1.^2));

T = 0:pi/50:2*pi;
X2 = 2.*cos(T).^3;
Y2 = 2.*sin(T).^3;
 
subplot(1,2,1)
plot(X1,Y1,"x:r")
title("$y = \frac{5 + x^2 + x^3 + x^4}{5 + 5x + 5x^2}\ (x \in [-4, 4])$","Interpreter","latex")
xlabel("x轴")
ylabel("y轴")

subplot(1,2,2)
plot(X2,Y2,"square-b")
title("$\begin{cases} x = 2 \cos ^{3} t, \\ y = 2 \sin ^{3} t, \end{cases}\ (t \in [0,2\pi])$","Interpreter","latex")
xlabel("x轴")
ylabel("y轴")