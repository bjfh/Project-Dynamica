function [ArrayIn] = Fill_Array(ArrayIn,CurrentIteration)
%Vult de niet gebruikte waarden van een array met de laatst berekende
%waarde.
    k = ArrayIn(CurrentIteration-1);
    for(n=CurrentIteration:1:length(ArrayIn))
        ArrayIn(n)= k;
    end
end
