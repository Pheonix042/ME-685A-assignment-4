h=0.1
x=0
y=-1
while x<1:
    y=y+h*(4*x+y-1)**2
    x=round(x+h,2)
    print(x,y)
x=0
y=-1
while x<1:
    a=y+h*(4*x+y-1)**2
    x1=x+h
    b=y+0.05*((4*x+y-1)**2+(4*x1+a-1)**2)
    x=round(x+h,3)
    y=b
    print(x,b)
x=0
y=-1
f=lambda x,y:(4*x+y-1)**2
while x<1:
    k1=f(x,y)*h
    k2=h*f(x+(h/2),y+(k1/2))
    k3=h*f(x+(h/2),y+(k2/2))
    k4=h*f(x+h,y+k3)
    k=(k1+2*k2+2*k3+k4)/6
    x=round(x+h,2)
    y+=k
    print(x,y)
