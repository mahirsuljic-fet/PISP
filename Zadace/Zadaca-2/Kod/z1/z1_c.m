syms R1 R2 R3 R4 R5 R6 R7 V1 V2 Is real;

R = [R1 4 5;
     R2 2 3;
     R3 3 4;
     R4 0 3;
     R5 0 4;
     R6 4 5;
     R7 0 1];
V = [V1 3 4;
     V2 2 0];
I = [Is 1 5];

kolo.V = V;
kolo.R = R;
kolo.I = I;
kolo.simb = 1;

[G, B, C, D, A] = amatrica(kolo);
Z = zmatrica(kolo);
x = (A\Z);

disp('Napon na R3 = ');
pretty(x(4)-x(3));
disp('Struja kroz V1 = ');
pretty(x(6));