U1 = 125;
U2 = 65;
R1 = 510;
R2 = 500;
R3 = 550;
R4 = 250;
R5 = 300;
R6 = 800;
R7 = 330;
R8 = 250;

% Dosazovani

U = U1 + U2;

R56 = (R5*R6)/(R5+R6);
R78 = R7 + R8;

RA = (R1*R2)/(R1+R2+R3);
RB = (R1*R3)/(R1+R2+R3);
RC = (R2*R3)/(R1+R2+R3);

RB56 = RB + R56;
RC4 = RC + R4;

RB56C4 = (RB56*RC4)/(RB56+RC4);

% Celkovy odpor
Rekv = RA + RB56C4 + R78;

I = U / Rekv;

% Dopocet zpet
UB56C4 = RB56C4 * I;
U78 = R78 * I;
URA = RA * I;

IB56 = UB56C4 / RB56;
IC4 = UB56C4 / RC4;

UR4 = IC4 * R4;

UR2 = U - UR4 - U78;
IR2 = UR2 / R2;

% Kontrola
KONTROLA1 = IC4 + IB56 == I;
KONTROLA2 = URA + UB56C4 + U78 == U;




