% Priklad 3 - Uzlove napeti - zadani E

U = 135;
I1 = 0.55;
I2 = 0.65;
R1 = 52;
R2 = 42;
R3 = 52;
R4 = 42;
R5 = 21;

% Vypocet el. vodivosti

G1 = 1 / R1;
G2 = 1 / R2;
G3 = 1 / R3;
G4 = 1 / R4;
G5 = 1 / R5;

Ix = U / R5;


A = [ -G1-G2   G2     0;
       G2     -G2-G3  G3;
       0          G3       -G3-G4+G5 ];

B = [-I1; -I2; I2-Ix];

X = linsolve(A,B);
UC = X(3);
UA = X(1);


UR4 = UC;
IR4 = UC * G4;


