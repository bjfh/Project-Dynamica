%Dimensieloos
n = 1;                                              %iteratie nummer
nmax = 10000;                                       %maximaal aantal itteraties
Massa = 0.175;                                      %kg
CD0 = 0.08;                                         %1
CDalpha = 2.72;                                     %1
Alpha0 = -4;                                        %graden
CL0 = 0.1;                                         %1
CLalpha = 1.4;                                      %1
Tijd(n) = 0;                                        %s
DeltaTijd = 0.001;                                  %s


%Arrays
AfstandX = zeros(1,nmax);
AfstandY = zeros(1,nmax);
SnelheidX = zeros(1,nmax);
SnelheidY = zeros(1,nmax);
Tijd = zeros(1,nmax);

%Beide dimensies
Snelheid = 14;                                      %m*s^-1
AanvalsHoekXAs = 5;                                 %graden
DichtheidLucht = 1.23;                              %kg/m^3
DiameterFrisbee = 0.28;                              %m
OppervlakFrisbee = 1/4 * pi * DiameterFrisbee^2;    %m^2


%Dimensie X
WeerstandCoef = CD0 + CDalpha * ((AanvalsHoekXAs - Alpha0) * pi / 180)^2;%1
AfstandX(n) = 0;                                    %m
DeltaAfstandX = 0;
SnelheidX(n) = Snelheid;     %m*s^-1

%Dimensie Y
LiftCoef = CL0 + CLalpha * AanvalsHoekXAs * pi / 180;%1
AfstandY(n) = 1;                                    %m
DeltaAfstandY = 0;
SnelheidY(n) = 0;     %m*s^-1
Gravitatie = -9.81;                                 %m*s^-2

%Begin Waarden zijn gegeven
n = n + 1;                                          %volgende iteratie
