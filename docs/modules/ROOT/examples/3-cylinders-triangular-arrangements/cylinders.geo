//GMSH 
D=1.5;
L_sur_D=1.2;
L=D*L_sur_D;
H=200*D;
h=8;
Ld=100*D;
Lu=-100*D;
// grand caree
Point(1) = {0, 0, 0,h};
Point(2) = {Ld,H/2,0,h};
Point(3) = {Ld,-H/2,0,h};
Point(4) = {Lu,H/2,0,h};
Point(9) = {Lu,-H/2,0,h};
Line(1) = {2, 3};
Line(2) = {3, 9};
Line(3) = {9, 4};
Line(4) = {4, 2};
//caree milieu
//Point(30) = {8*D/2,8*D/2,0,h};
//Point(31) = {-8*D/2,8*D/2,0,h};
//Point(32) = {-8*D/2,-8*D/2,0,h};
//Point(33) = {8*D/2,-8*D/2,0,h};
//Line(16) = {30, 31};
//Line(17) = {31, 32};
//Line(18) = {32, 33};
//Line(19) = {33, 30};
//+ cercles
Point(23) = {-L, 0, 0, h};//centre 1
Point(17) = {L, L_sur_D, 0, h};//centre 2
Point(18) = {L, -L_sur_D, 0, h}; //centre 3
Point(24) = {L+D/2, L_sur_D, 0, h};
Point(25) = {L-D/2, L_sur_D, 0, h};
Point(26) = {L-D/2, -L_sur_D, 0, h};
Point(27) = {L+D/2, -L_sur_D, 0, h};
Point(28) = {-L-D/2, 0, 0, h};
Point(29) = {-L+D/2, 0, 0, h};
Circle(9) = {24, 17, 25};
Circle(10) = {25, 17, 24};
Circle(11) = {26, 18, 27};
Circle(12) = {27, 18, 26};
Circle(14) = {29, 23, 28};
Circle(15) = {28, 23, 29};
//surface   
Line Loop(1) = {4, 1, 2, 3};
Line Loop(3) = {14, 15};
Line Loop(4) = {9, 10};
Line Loop(5) = {11, 12};
Plane Surface(1) = {1, 3, 4, 5};
//Physical
Physical Line("Inlet") = {3};
Physical Line("Outlet") = {1};
Physical Line("Wall1") = {4};
Physical Line("Wall2") = {2};
Physical Line("load1") = {9,10};
Physical Line("load2") = {11,12};
Physical Line("load3") = {14,15};
Physical Surface("omega") = {1};


