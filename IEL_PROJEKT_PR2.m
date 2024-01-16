% Priklad 2 - Thevenin - zadani B
format short;

U = 100;
R1 = 50;
R2 = 310;
R3 = 610;
R4 = 220;
R5 = 570;
R6 = 100;

% Vypocet Ri

R23 = R2 + R3;
R123 = (R1 * R23) / (R1 + R23);
R1234 = R123 + R4;

R12345 = (R1234 * R5) / (R1234 + R5);

Ri = R12345;


% Ted musime udelat Rekv, ale R45 zapojime seriove

R45s = R4 + R5;
R2345s = (R23 * R45s) / (R23 + R45s);

Rekv = R1 + R2345s;

% Vypocet Ui

Ix = U / Rekv;
U2345 = U - (R1 * Ix);
I45 = U2345 / R45s;
I23 = U2345 / R23;

KONTROLA_Ix = (Ix == I45 + I23);
Ui = I45 * R5;

% Vypocet vysledku ************************************************

IR6 = Ui / (Ri + R6);
UR6 = R6 * IR6;

% Kontrola dalsi

UR5 = U2345 - (I45 * R4);