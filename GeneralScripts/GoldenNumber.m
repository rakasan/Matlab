sum = 1 + CalculateFrac(89);

function frac = CalculateFrac(n)
 if( n == 2)
    frac = 1/2;
 else
    frac = 1/(1+CalculateFrac(n-1))
 end
end

