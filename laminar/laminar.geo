// Gmsh project created on Mon Apr 27 18:52:15 2020
//+
//x en m et y en dm
h=0.04;
//+
Point(3) = {0, 0, 0, h};
//+
Point(4) = {0.5, 0, 0, h};
//+
Point(5) = {-0.2, 0.0049, 0, h};
//+
Point(6) = {0, 0.0049, 0, h};
//+
Point(7) = {-0.2, 0.0101, 0, h};
//+
Point(8) = {0.5, 0.0101, 0, h};

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
