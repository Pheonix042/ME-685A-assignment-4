    clc;
    clear all;
    n = 10;
    y = zeros(1,n);
    t = zeros(1,n);    
    maxitr = 100;
    h = 1.0/(n-1);
    y(1) = 0;
    y(n) = 1;
    for i = 1:n
        t(i) = (i-1)*h;
    end
    for i = 1:maxitr
        y(1) = 0;
        y(n) = 1;
        for k = 2: n-1
             y(k) = (y(k+1) + y(k-1) - (h*h*t(k)*t(k)))/(2 + h*h*(3 + 10*y(k)*y(k)));
        end
    end
    t
    y
   plot(t,y,'LineWidth',2)