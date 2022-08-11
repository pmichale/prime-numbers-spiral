function primenumbers = findprimes(hornilimit)
%vektor vsech cisel v danem rozmezi
allnumbers = 1:hornilimit;
%prvni prime je dvojka
currentnumber = 2;
%vyrazujeme nasobky prvocisel dokud se pohybujeme v rozmezi
while (currentnumber^2) <= sqrt(hornilimit)
    allnumbers((currentnumber^2):currentnumber:hornilimit) = 0;
    currentnumber = find(allnumbers > currentnumber,1,'first');
end
% 1 nepatri mezi primes
primenumbers = allnumbers(allnumbers>1);
end