while ((AfstandY(n-1) > 0) && (n <= nmax))
    %X as
    Drag = -(WeerstandCoef * DichtheidLucht * OppervlakFrisbee * (SnelheidX(n-1)^2)) / 2;
    XKrachten = Drag;
    AcceleratieX = XKrachten / Massa;
    DeltaSnelheidX = AcceleratieX * DeltaTijd;
    SnelheidX(n) = SnelheidX(n-1) + DeltaSnelheidX;
    DeltaAfstandX = SnelheidX(n) * DeltaTijd;
    AfstandX(n) = AfstandX(n-1) + DeltaAfstandX;
    
    %Y as
    LiftKracht = (LiftCoef * DichtheidLucht * OppervlakFrisbee * (SnelheidX(n-1)^2))/2;
    ZwaarteKracht = Massa * Gravitatie;
    YKrachten = LiftKracht + ZwaarteKracht;
    AcceleratieY = YKrachten / Massa;
    DeltaSnelheidY = AcceleratieY * DeltaTijd;
    SnelheidY(n) = SnelheidY(n-1) + DeltaSnelheidY;
    DeltaAfstandY = SnelheidY(n) * DeltaTijd;
    AfstandY(n) = AfstandY(n-1) + DeltaAfstandY;
    
    %Tijd en iteratie
    Tijd(n) = Tijd(n-1) + DeltaTijd;
    n = n + 1;
end
