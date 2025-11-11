A = [...
    2 1 1;
    1 2 1;
    1 1 2];

%特征多项式
p = poly(A);
str_p = poly2str(p,'x')

%特征向量V, 特征值D
[V,D] = eig(A)