// Gmsh project created on Mon Apr 27 18:52:15 2020// Gmsh project created on Mon Apr 27 18:52:15 2020
//+
h=0.005;
S=0.049;
H=0.052;
L1=0.2;
L2=0.5;
//Points
Point(3) = {0, 0, 0, h};
Point(4) = {L2, 0, 0, h};
Point(5) = {-L1, S, 0, h};//+0.0049
Point(6) = {0, S, 0, h};
Point(7) = {-L1, S+H, 0, h*5};//+0.0101
Point(8) = {L2, S+H, 0, h*5};

//Line 
Line(1) = {7, 5};
Line(2) = {5, 6};
Line(3) = {6, 3};
Line(4) = {3, 4};
Line(5) = {4, 8};
Line(6) = {8, 7};

//Points
Point(9) = {0, 0.101, 0, h*5};
Point(10) = {0.26509, 0, 0, h};
Point(11) = {0.26509, 0.101, 0, h*5};

//+
Line(7) = {9, 6};
Line(8) = {11, 10};
Physical Line("marker_L1") = {7};
Physical Line("marker_L2") = {8};
Physical Point("pt1")={7};
Physical Point("pt2")={9};
Physical Point("pt3")={11};
Physical Point("pt4")={8};

//+
Line Loop(1) = {6, 1, 2, 3, 4, 5};
Plane Surface(1) = {1};
Delete {
  Surface{1}; 
}
Delete {
  Line{2}; Line{1}; Line{6}; Line{4}; Line{3}; Line{5}; 
}
//entee
Line(9)  = {7, 5};
//sortie
Line(10) = {4, 8};
//sortie---->entree
Line(11) = {8, 11};
Line(12) = {11, 9};
Line(13) = {9, 7};
//entree--->sortie
Line(14) = {5, 6};
Line(15) = {6, 3};
Line(16) = {3, 10};
Line(17) = {10, 4};

//surface
Line Loop(2) = {13, 9, 14, -7};
Plane Surface(1) = {2};

Line Loop(3) = {7, 15, 16, -8, 12};
Plane Surface(2) = {3};

Line Loop(4) = {8, 17, 10, 11};
Plane Surface(3) = {4};

//phy surface
Physical Surface("ommega") = {1, 2, 3, 4};

//phy line
Physical Line("inlet") = {9};
Physical Line("outlet") = {10};
Physical Line("wall1") = {16, 17};
Physical Line("wall2") = {15};
Physical Line("wall3") = {14};
Physical Line("wall4") = {11,12,13};