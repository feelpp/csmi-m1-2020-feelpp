// Gmsh project created on Mon Apr 27 18:52:15 2020
//+
h=0.01;
//+
Point(3) = {0, 0, 0, h};
//+
Point(4) = {0.5, 0, 0, h};
//+
Point(5) = {-0.2, 0.049, 0, h};//+0.0049
//+
Point(6) = {0, 0.049, 0, h};
//+
Point(7) = {-0.2, 0.101, 0, h};//+0.0101
//+
Point(8) = {0.5, 0.101, 0, h};
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
Physical Surface("ommega")={1};
