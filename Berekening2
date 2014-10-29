clear all;

n = 1;
nmax = 2000;
x = zeros(1,nmax);
y = zeros(1,nmax);
vx = zeros(1,nmax);
vy = zeros(1,nmax);
t = zeros(1,nmax);
g = -9.81;
m = 0.175;
RH0 = 1.23;
AREA = 0.0568;
CL0 = 0.15;
CLA = 1.4;
CD0 = 0.08;
CDA = 2.72;
ALPHA0 = -4;

alpha = 5;
y0 = 1;
vx0 = 14;
vy0 = 0;

cl = CL0 + CLA * alpha * pi / 180;
cd = CD0 + CDA * ((alpha - ALPHA0) * pi / 180) ^ 2;

t(n) = 0;
x(n) = 0;
y(n) = y0;
vx(n) = vx0;
vy(n)= vy0;
deltaT = 0.001;

n = n + 1;

while ((y(n-1) > 0) && (n < nmax))
    deltavy = (RH0 * ((vx(n-1))^2) * AREA * cl / 2 / m + g) * deltaT;
    deltavx = (-RH0 * ((vx(n-1))^2) * AREA * cd / 2 / m) * deltaT;
    
    vx(n) = vx(n-1) + deltavx;
    vy(n) = vy(n-1) + deltavy;
    x(n) = x(n-1) + vx(n) * deltaT;
    y(n) = y(n-1) + vy(n) * deltaT;
    t(n) = t(n-1) + deltaT;
    
    n = n + 1;
end

x = Fill_Array(x,n);
y = Fill_Array(y,n);
vx = Fill_Array(vx,n);
vy = Fill_Array(vy,n);
t = Fill_Array(t,n);

figure
plot(x,y,'.')
axis([0,ceil(max(x)),0,ceil(max(y))])
title('Grafiek van de afstandX uitgezet tegen de afstandY')
xlabel('AfstandX(m)')
ylabel('AfstandY(m)')
