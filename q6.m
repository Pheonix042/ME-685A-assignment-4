clc;
clear all;
ko=1;
ky=1;
h=0.1;
N=300; 
xo(1)=0.5;
xy(1)=0.4;
xz(1)=0.1;
t(1)=0;
zo=1/2;
zy=2/5;
zz=1/10;
for i=1:N
    F=@(y) y-h*(-ko*y)-zo;
    G=@(y) 1-h*ko;
    y=1;
    zo=newr(y,F,G);
    xo(i+1)=zo;
    F=@(y) y-h*(ko*zo-ky*y)-zy;
    G=@(y) 1+h*ky;
    y=1;
    zy=newr(y,F,G);
    xy(i+1)=zy;
    xz(i+1)= xz(i)+h*(ky.*xy(i+1));
    t(i+1)=t(i)+h;
   
end
plot(t,xo,'LineWidth',2)
hold on
plot(t,xy,'LineWidth',2)
hold on
plot(t,xz,'LineWidth',2)