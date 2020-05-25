// Gmsh project created on Mon Apr 27 18:52:15 2020
//+
h=0.0005;
S=0.0049;
H=0.0052;
L1=0.2;
L2=0.5;
//+
Point(3) = {0, 0, 0, h};
//+
Point(4) = {L2, 0, 0, h};
//+
Point(5) = {-L1, S, 0, h};//+0.0049
//+
Point(6) = {0, S, 0, h};
//+
Point(7) = {-L1, S+H, 0, h};//+0.0101
//+
Point(8) = {L2, S+H, 0, h};
//+
Point(9)={S*5.41, 0, 0, h};
//+
Point(11) = {0, S+H, 0, h};
//+
Point(13) = {S*5.41, S+H, 0, h};
//+
Line(1) = {5, 7};
//+
Line(2) = {5, 6};
//+
Line(3) = {6, 3};
//+
Line(4) = {3, 4};
//+
Line(5) = {4, 8};
//+
Line(6) = {8, 7};
//+
Line(7) = {13, 9};
//+
Line(8) = {11, 6};
//+
Line Loop(1) = {6, -1, 2, 3, 4, 5};
//+
Plane Surface(1) = {1};
//+
Physical Line("inlet") = {1};
//+
Physical Line("outlet") = {5};
//+
Physical Line("wall1") = {4};
//+
Physical Line("wall2") = {3};
//+
Physical Line("wall3") = {2};
//+
Physical Line("wall4") = {6};
//+
Physical Line("wall5") = {7};
//+
Physical Line("wall5") = {8};
//+
Physical Surface("omega") = {1};