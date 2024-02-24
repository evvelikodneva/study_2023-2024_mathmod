s=18;// начальное расстояние от лодки до катера
fi=3*%pi/4;
//функция, описывающая движение катера береговой охраны
function dr=f(tetha, r)
dr=r/sqrt(3.9);
endfunction;
//начальные условия в случае 2
r0=s/3.9;
tetha0=-%pi;
tetha=0:0.01:2*%pi;
r=ode(r0,tetha0,tetha,f);
//функция, описывающая движение лодки браконьеров
function xt=f2(t)
 xt=tan(fi)*t;
endfunction
t=0:1:300;
polarplot(tetha,r,style = color('blue')); //построение траектории движения катера в полярных координатах
plot2d(t,f2(t),style = color('red'));
a=0:1:0;
b=0:1:-259.18;
c=[259.25,259.25]
d=[0,-259.25]
//plot2d(a,b);
plot(c,d)
