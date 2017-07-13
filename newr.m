function x = newr(x,f,g)
x_old=x+1;
iter=0;
while abs(x_old-x) > 10^-9
    x_old = x;
    x_old = x;
    x = x - f(x)/g(x);
    iter = iter + 1;
end
end