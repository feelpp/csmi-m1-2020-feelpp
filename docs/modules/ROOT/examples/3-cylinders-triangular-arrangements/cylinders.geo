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
hCircle=h/100;
longMediane=Sqrt(3./4.)*L;
Point(23) = {-(2./3)*longMediane, 0, 0, hCircle};//centre 1
Point(17) = {(1./3)*longMediane, L/2, 0, hCircle};//centre 2
Point(18) = {(1./3)*longMediane, -L/2, 0, hCircle}; //centre 3
Point(24) = {(1./3)*longMediane+D/2, L/2, 0, hCircle};
Point(25) = {(1./3)*longMediane-D/2, L/2, 0, hCircle};
Point(26) = {(1./3)*longMediane-D/2, -L/2, 0, hCircle};
Point(27) = {(1./3)*longMediane+D/2, -L/2, 0, hCircle};
Point(28) = {-(2./3)*longMediane-D/2, 0, 0, hCircle};
Point(29) = {-(2./3)*longMediane+D/2, 0, 0, hCircle};
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
Physical Line("load2") = {9,10};
Physical Line("load3") = {11,12};
Physical Line("load1") = {14,15};
Physical Surface("omega") = {1};


