clf

t = 0: pi/50: 20*pi;
x = t .* cos(pi/6 .* t);
y = t .* sin(pi/6 .* t);
z = 2 .* t;

plot3(x,y,z,"b-x","MarkerIndices",1:10:length(t))
title("圆锥螺线")
xlabel("x轴")
ylabel("y轴")
zlabel("z轴")
text(0,0,120,"$\begin{cases}x = t\cos \frac{\pi}{6}t \\ y = t \sin \frac{pi}{6} t \\ z = 2t \end{cases}\ (t \in [0,20\pi])$","Interpreter","latex")
text(0,0,0,"O")