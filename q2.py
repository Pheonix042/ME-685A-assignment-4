import matplotlib.pyplot as plt
from math import sqrt,sin,pi
from scipy import integrate
import numpy as np
fun=lambda x:(1/sqrt(1-a*sin(x)**2))
xo=np.arange(0,1,0.01)
intr=[]
for num in range(len(xo)):
    a=xo[num]
    b,c=integrate.quad(fun,0,pi/2)
    intr.append(b)
plt.plot(xo,intr,'b-*')
plt.show()
