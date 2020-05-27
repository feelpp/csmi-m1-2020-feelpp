// Gmsh project created on Mon Apr 27 18:52:15 2020// Gmsh project created on Mon Apr 27 18:52:15 2020
//+
h=5e-4;
S=0.0049;
H=0.0052;
L1=0.2;
L2=0.5;

//Points
Point(3) = {0, 0, 0, h};
Point(4) = {L2, 0, 0, h};
Point(5) = {-L1, S, 0, h};//+0.0049
Point(6) = {0, S, 0, h};
Point(7) = {-L1, S+H, 0, h};//+0.0101
Point(8) = {L2, S+H, 0, h};

//Line  basique 
Line(1) = {7, 5};
Line(2) = {5, 6};
Line(3) = {6, 3};
Line(4) = {3, 4};
Line(5) = {4, 8};
Line(6) = {8, 7};

//Points vertical 1er cas re=398
Point(9)  = {0, S+H, 0, h};
Point(10) = {S*5.41, 0, 0, h};
Point(11) = {S*5.41, S+H, 0, h};
Point(12) = {S*11.84, 0, 0, h};
Point(13) = {S*11.84, S+H, 0, h};
//Points vertical 2eme cas re=1095
Point(14) = {S*7.04,  0,    0, h};
Point(15) = {S*7.04, S+H,   0, h};
Point(16) = {S*19.04,   0,   0, h};
Point(17) = {S*19.04, S+H,   0, h};


//+marker pour Re=389
Line(7) = {9, 6};
Line(8) = {11, 10};
Line(9) = {13, 12};
Physical Line("marker_L1") = {7};
Physical Line("marker_L2") = {8};
Physical Line("marker_L3") = {9};

//marker pour Re=1095
Line(25) = {15, 14};
Line(26) = {17, 16};
Physical Line("marker_L4") = {25};
Physical Line("marker_L5") = {26};

Physical Point("pt1")={7};
Physical Point("pt2")={9};
Physical Point("pt3")={11};
Physical Point("pt4")={15};
Physical Point("pt5")={13};
Physical Point("pt6")={17};
Physical Point("pt7")={8};

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
Line(10)  = {7, 5};
//sortie
Line(11) = {4, 8};
//sortie---->entree
Line(12) = {8, 17};
Line(13) = {17, 13};
Line(14) = {13, 15};
Line(15) = {15, 11};
Line(16) = {11, 9};
Line(17) = {9, 7};
//entree--->sortie
Line(18) = {5, 6};
Line(19) = {6, 3};
Line(20) = {3, 10};
Line(21) = {10, 14};
Line(22) = {14, 12};
Line(23) = {12, 16};
Line(24) = {16, 4};

//surface
Line Loop(2) = {12, 26, 24, 11};
Plane Surface(1) = {2};

Line Loop(3) = {13, 9, 23, -26};
Plane Surface(2) = {3};

Line Loop(4) = {14, 25, 22,-9};
Plane Surface(3) = {4};

Line Loop(5) = {15, 8, 21,-25};
Plane Surface(4) = {5};

Line Loop(6) = {16, 7, 19, 20, -8};
Plane Surface(5) = {6};

Line Loop(7) = {17, 10, 18, -7};
Plane Surface(6) = {7};

//phy surface
Physical Surface("omega") = {1, 2, 3, 4, 5, 6};

//phy line
Physical Line("inlet") = {10};
Physical Line("outlet") = {11};
Physical Line("wall1") = {20,21,22,23,24};
Physical Line("wall2") = {19,18};
Physical Line("wall3") = {17,16,15,14,13,12};