//GMSH 
D=1.5;
L_sur_D=1.1;
L=D*L_sur_D;
H=200*D;
h=8;
Ld=100*D;
Lu=-100*D;
//caree
Point(1) = {0, 0, 0,h};
Point(2) = {Ld,H/2,0,h};
Point(3) = {Ld,-H/2,0,h};
Point(4) = {Lu,H/2,0,h};
Point(9) = {Lu,-H/2,0,h};
//+
Line(1) = {2, 3};
//+
Line(2) = {3, 9};
//+
Line(3) = {9, 4};
//+
Line(4) = {4, 2};
//+
Point(23) = {((2*L)-Sqrt((2*L)^2-4*(L_sur_D)^2))/2, 0, 0, h};//centre 1
//+
Point(17) = {L, L_sur_D, 0, h};//centre 2
//+
Point(18) = {L, -L_sur_D, 0, h}; //centre 3
//+
Point(24) = {L+D/2, L_sur_D, 0, h};
//+
Point(25) = {L-D/2, L_sur_D, 0, h};
//+
Point(26) = {L-D/2, -L_sur_D, 0, h};
//+
Point(27) = {L+D/2, -L_sur_D, 0, h};
//+
Point(28) = {((2*L)-Sqrt((2*L)^2-4*(L_sur_D)^2))/2-D/2, 0, 0, h};
//+
Point(29) = {((2*L)-Sqrt((2*L)^2-4*(L_sur_D)^2))/2+D/2, 0, 0, h};
//+
Circle(9) = {24, 17, 25};
//+
Circle(10) = {25, 17, 24};
//+
Circle(11) = {26, 18, 27};
//+
Circle(12) = {27, 18, 26};
//+
Circle(14) = {29, 23, 28};
//+
Circle(15) = {28, 23, 29};
//+
//surface
//+
Line Loop(1) = {9, 10};
//+
Line Loop(2) = {12, 11};
//+
Line Loop(3) = {14, 15};
//+
Line Loop(4) = {1, 2, 3, 4};
//+
Plane Surface(1) = {1, 2, 3, 4};
//+
Physical Line("inlet") = {3};
//+
Physical Line("outlet") = {1};
//+
Physical Line("wall1") = {4};
//+
Physical Line("wall2") = {2};
