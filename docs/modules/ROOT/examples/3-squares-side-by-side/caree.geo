// Gmsh project created on Sat Aug  8 13:20:47 2020
l_sur_w=1.5;
w=2;
l=w*(l_sur_w);
Lt=w/(5.26/100);
Ld=29.5*w;
Lu=13.5*w;
h=0.5;
//+grand caree (domaine)
Point(1) = {0, 0, 0, h};
//+
Point(2) = {Ld, Lt/2, 0, h};
//+
Point(3) = {Ld, -Lt/2, 0, h};
//+
Point(4) = {- Lu, Lt/2, 0, h};
//+
Point(5) = {- Lu, -Lt/2, 0, h};
//+
Line(1) = {4, 5};
//+
Line(2) = {5, 3};
//+
Line(3) = {3, 2};
//+
Line(4) = {2, 4};
//+zone des caree
//Point(6) = {5, Lt/2, 0, 1.0};
//+
//Point(7) = {-5, Lt/2, 0, 1.0};
//+
//Point(8) = {5, -Lt/2, 0, 1.0};
//+
//Point(9) = {-5, -Lt/2, 0, 1.0};
//+
//Line(5) = {7, 9};
//+
//Line(6) = {6, 8};
//caree milieu
Point(10) = {w/2,w/2, 0, h};
Point(11) = {-w/2,w/2, 0, h};
Point(12) = {w/2,-w/2, 0, h};
Point(13) = {-w/2,-w/2, 0, h};
Line(7) = {10, 11};
Line(8) = {11, 13};
Line(9) = {13, 12};
Line(10) = {12, 10};
//caree haut
Point(14) = {0,l, 0, h};
Point(15) = {w/2,l+w/2, 0, h};
Point(16) = {-w/2,l+w/2, 0, h};
Point(17) = {w/2,l-w/2, 0, h};
Point(18) = {-w/2,l-w/2, 0, h};
Line(11) = {17, 18};
Line(12) = {18, 16};
Line(13) = {16, 15};
Line(14) = {15, 17};
//caree bas
Point(19) = {0,-l, 0, h};
Point(20) = {w/2,-l+w/2, 0, h};
Point(21) = {-w/2,-l+w/2, 0, h};
Point(22) = {w/2,-l-w/2, 0, h};
Point(23) = {-w/2,-l-w/2, 0, h};

//+
Line(15) = {20, 21};
//+
Line(16) = {21, 23};
//+
Line(17) = {23, 22};
//+
Line(18) = {22, 20};
//+
Line Loop(1) = {4, 1, 2, 3};
//+
Line Loop(2) = {13, 14, 11, 12};
//+
Line Loop(3) = {7, 8, 9, 10};
//+
Line Loop(4) = {15, 16, 17, 18};
//+
Plane Surface(1) = {1, 2, 3, 4};
//+
Physical Line("inlet") = {1};
//+
Physical Line("outlet") = {3};
//+
Physical Line("wall1") = {4};
//+
Physical Line("wall2") = {2};
//+
Physical Surface("omega") = {1};
//+
Physical Surface("omega") += {1};
