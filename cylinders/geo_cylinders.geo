// Gmsh project created on Mon Jul 27 13:55:48 2020
D=4;
L=4.4;
H=200*D;
h=8;
//+
Point(1) = {0, 0, 0,h};
//+
Point(2) = {0,H,0,h};
//+
Point(3) = {H,0,0,h};
//+
Point(4) = {H/2,H/2,0,h};
//+
Point(9) = {H,H,0,h};
//+
//Point(5) = {416, 416, 0, 1.0};
//+
//Point(6) = {384, 384, 0, 1.0};
//+
//Point(7) = {384, 416, 0, 1.0};
//+
//Point(8) = {416, 384, 0, 1.0};
//+
//Line(1) = {5, 7};
//+
//Line(2) = {7, 6};
//+
//Line(3) = {6, 8};
//+
//Line(4) = {8, 5};

//+ grand caree
Line(5) = {2, 1};
//+
Line(6) = {1, 3};
//+
Line(7) = {2, 9};
//+
Line(8) = {9, 3};

//cercles
//+1
Point(10) = {(H/2-1)-(D/2),H/2, 0,h};//centre du cercle
//+
Point(11) = {H/2-1,H/2, 0,h};
//+
Point(12) = {(H/2-1)-D,H/2, 0,h};
//+
Circle(9) = {12, 10, 11};
//+
Circle(10) = {11, 10, 12};

//+2
Point(13) = {(H/2)+(D/2),(H/2)+(L/2), 0, 1.0};//centre du cercle
//+
Point(14) = {H/2,(H/2)+(L/2), 0,h};
//+
Point(15) = {(H/2)+D,(H/2)+(L/2), 0,h};
//+
Circle(11) = {14, 13, 15};
//+
Circle(12) = {15, 13, 14};


//+3
Point(16) = {(H/2)+(D/2),(H/2)-(L/2),0,h};//centre du cercle
//+
Point(17) = {H/2,(H/2)-(L/2), 0,h};
//+
Point(18) = {(H/2)+D,(H/2)-(L/2), 0,h};
//+
Circle(13) = {17, 16, 18};
//+
Circle(14) = {18, 16, 17};

//+surfaces
Line Loop(1) = {7, 8, -6, -5};
//+
Line Loop(2) = {10, 9};
//+
Line Loop(3) = {12, 11};
//+
Line Loop(4) = {14, 13};
//+
Plane Surface(1) = {1, 2, 3, 4};

//+ pyhsicak groupes
Physical Line("Inlet") = {5};
//+
Physical Line("Oulet") = {8};
//+
Physical Line("Wall1") = {6};
//+
Physical Line("Wall2") = {7};
//+
Physical Surface("omega") = {1};
