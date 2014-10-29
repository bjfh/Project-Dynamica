XMax = ceil(max(AfstandX));
YMax = ceil(max(AfstandY));
TMax = (max(Tijd));
XSnel = ceil(max(SnelheidX));

figure
plot(AfstandX,AfstandY,'.')
axis([0,XMax,0,YMax])
title('Grafiek van de afstandX uitgezet tegen de afstandY')
xlabel('AfstandX(m)')
ylabel('AfstandY(m)')

figure
plot(Tijd,SnelheidX,'.')
axis([0,TMax,0,XSnel])
title('Grafiek van de tijd uitgezet tegen de afstandX')
xlabel('Tijd(s)')
ylabel('AfstandX(m)')

figure
plot(Tijd,AfstandY,'.')
axis([0,TMax,0,YMax])
title('Grafiek van de tijd uitgezet tegen de afstandY')
xlabel('tijd(s)')
ylabel('AfstandY(m)')
