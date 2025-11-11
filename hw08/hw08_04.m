format long
x0 = [3/5;2/5];
A = [1/4 1/3; 3/4 2/3];

X = [A*x0];

t=1;
while true
    X(:,t+1) = A * X(:,t);
    if X(:,t+1) == X(:,t)
        break
    end
    t=t+1;
end

%(1)
for i=[2,5,10]
    disp([num2str(i),'年后两家的市场份额为：'])
    disp(X(:,i))
end

%(2)
disp([num2str(t),'年后达到稳态'])

%(3)
[V,D] = eig(A)