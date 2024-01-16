convertMatrixOrigin = [-1/sqrt(2)     1/sqrt(2)   1 1;
                1/sqrt(2)       -1/sqrt(2)  1 1;
                1/sqrt(2)       1/sqrt(2)  -1 1;
                -1/sqrt(2)      -1/sqrt(2) -1 1];
L = 0.25;
Km = 1;
convertMatrix = [1              1           1           1;
                 -L/sqrt(2)     L/sqrt(2)   L/sqrt(2)   -L/sqrt(2);
                 L/sqrt(2)      -L/sqrt(2)  L/sqrt(2)   -L/sqrt(2);
                 Km/sqrt(2)     Km/sqrt(2)  -Km/sqrt(2) -Km/sqrt(2)]
inv(convertMatrix)