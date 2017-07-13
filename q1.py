fun='(4/(1+x**2))'#str(input('Enter function:'))
a=float(input('Enter start of interval:'))
b=float(input('Enter end of interval:'))
from romil import trepezoidal
from math import pi
from pylab import *
hh=linspace(0.01,0.1,10)
re=[]
for num in range(len(hh)):
    h=hh[num]
    aa=trepezoidal(fun,a,b,h)
    #if h==0.01 or h==0.02:
    print(h,aa)
    err=abs(aa-pi)
    re.append(err)
import matplotlib.pyplot as plt
plt.plot(hh,re,'r-')
plt.show()
