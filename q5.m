clc;
h=0.0002; 
N=80000;
yy(1)=0.1;
yz(1)=0.1;
x(1)=0;
epsilon=0.1;
f1=@(y1,y2) 6*y1-y1*y2;
f2=@(y1,y2) 2*y1*y2-8*y2;
for i=1:N
    k1=h*(f1(yy(i),yz(i)));
    k2=h*(f1(yy(i)+k1/2,yz(i)));
    k3=h*(f1(yy(i)+k2/2,yz(i)));
    k4=h*(f1(yy(i)+k3,yz(i)));
    yy(i+1)=yy(i)+(1/6)*(k1+2*k2+2*k3+k4);
    k11=h*(f2(yy(i),yz(i)));
    k12=h*(f2(yy(i),yz(i)+k11/2));
    k13=h*(f2(yy(i),yz(i)++k12/2));
    k14=h*(f2(yy(i),yz(i)++k13));
    yz(i+1)=yz(i)+(1/6)*(k11+2*k12+2*k13+k14);
     x(i+1)=x(i)+h;
end
plot(x,yy,'b')
hold on
plot(x,yz,'r')