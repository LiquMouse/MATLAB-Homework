function dx = fun(t, x)
    u = 3*cos(t);
    dx = ([0,1;-1,1]*x + [0;1]*u);
end