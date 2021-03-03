clearvars;clc

f = @(x) 2*exp(-0.6.*x).*(x.^2);
a = 0; b = 4; n = 4;

I = integral(f,a,b);
S = simpsons(f,a,b,n);

ERR = abs(I-S);
TOL = 1.0729e-06;

while (ERR > TOL) && (n <= 1024)
    n = 2*n;
    S = simpsons(f,a,b,n);
    ERR = abs(I-S);
end

% n = 64, h = 0.0625
% S = 7.968357177755951
% I = 7.968356543379435