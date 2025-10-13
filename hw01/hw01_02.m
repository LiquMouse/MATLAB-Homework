clf

X = 1:pi/50:15;
Y1 = log(X);
Y2 = -log(X);
Y3 = log(X).*sin(X);

plot(X,Y1,"g--o",X,Y2,"b--o",X,Y3,"r-x","MarkerIndices",1:10:length(Y3))
xlabel("x轴")
ylabel("y轴")

text(10,2.5,"$y=\ln x$","Interpreter",'latex')
text(10,-2.5,"$y=-\ln x$","Interpreter",'latex')
text(10,0,"$y = \ln x \sin x$","Interpreter","latex")