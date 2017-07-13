def trepezoidal(fun,a,b,h):
    summ=0
    x=a
    while x<=b:
        summ+=eval(fun)
        x+=h
    return (summ*h)
