while ((AfstandY(n-1) > 0) && (n <= nmax))
    Snelheid = sqrt(SnelheidX(n-1)^2 + SnelheidY(n-1)^2);
    if (SnelheidX(n-1) ~= 0)
        BewegingsHoekXAs = atand(SnelheidY(n-1)/SnelheidX(n-1));
    elseif (SnelheidY >= 0)
        BewegingsHoekXAs = 90;
    else
        BewegingsHoekXAs = -90;
    end
    AanvalsHoek = AanvalsHoekXAs - BewegingsHoekXAs;
    DragCoef = CD0 + CDalpha * ((AanvalsHoek - Alpha0) * pi / 180)^2;
    Drag = -DichtheidLucht * (Snelheid ^ 2) * OppervlakFrisbee *DragCoef / 2;
    LiftCoef = CL0 + CLalpha * AanvalsHoek * pi / 180;
    Lift = DichtheidLucht * (Snelheid ^ 2) * OppervlakFrisbee *LiftCoef / 2;
        
    %X as
    if (SnelheidX(n-1) ~= 0)
        DragX = SnelheidX(n-1)/abs(SnelheidX(n-1)) * Drag * cosd(BewegingsHoekXAs);
    else
        DragX = 0;
    end
    LiftX = Lift * sind(BewegingsHoekXAs);
    XKrachten = DragX + LiftX;
    AcceleratieX = XKrachten / Massa;
    DeltaSnelheidX = AcceleratieX * DeltaTijd;
    SnelheidX(n) = SnelheidX(n-1) + DeltaSnelheidX;
    DeltaAfstandX = SnelheidX(n) * DeltaTijd;
    AfstandX(n) = AfstandX(n-1) + DeltaAfstandX;
    
    %Y as
    if (SnelheidY(n-1) ~= 0)
        DragY = SnelheidY(n-1)/abs(SnelheidY(n-1)) * Drag * sind(BewegingsHoekXAs);
    else
        DragY = 0;
    end
    LiftY = -Lift * cosd(BewegingsHoekXAs);
    ZwaarteKracht = Gravitatie * Massa;
    YKrachten = ZwaarteKracht + LiftY + DragY;
    AcceleratieY = YKrachten / Massa;
    DeltaSnelheidY = AcceleratieY * DeltaTijd;
    SnelheidY(n) = SnelheidY(n-1) + DeltaSnelheidY;
    DeltaAfstandY = SnelheidY(n) * DeltaTijd;
    AfstandY(n) = AfstandY(n-1) + DeltaAfstandY;
    
    %Tijd en iteratie
    Tijd(n) = Tijd(n-1) + DeltaTijd;
    n = n + 1;
end
