// Gmsh project created on Mon Apr  6 14:11:59 2026
SetFactory("OpenCASCADE");
//+
cl_1 = 2500.0;
//+
Point(1) = {0, 0, 0, cl_1};
//+
Point(2) = {278000/2, 0, 0, cl_1};
//+
Point(3) = {-278000/2, 0, 0, cl_1};
//+
Point(4) = {0, 238000/2, 0, cl_1};
//+
Point(5) = {0, -238000/2, 0, cl_1};
//+
Point(6) = {0, 0, 171000/2, cl_1};
//+
Point(7) = {0, 0, -171000/2, cl_1};
//+
Ellipse(1) = {2, 1, 3, 4};
//+
Ellipse(2) = {4, 1, 2, 3};
//+
Ellipse(3) = {3, 1, 2, 5};
//+
Ellipse(4) = {5, 1, 3, 2};
//+
Ellipse(5) = {7, 1, 2, 3};
//+
Ellipse(6) = {3, 1, 2, 6};
//+
Ellipse(7) = {6, 1, 3, 2};
//+
Ellipse(8) = {2, 1, 3, 7};
//+
Ellipse(9) = {4, 1, 5, 6};
//+
Ellipse(10) = {6, 1, 4, 5};
//+
Ellipse(11) = {5, 1, 4, 7};
//+
Ellipse(12) = {7, 1, 5, 4};
//+
Curve Loop(1) = {2, 6, -9};
//+
Surface(1) = {1};
//+
Curve Loop(3) = {7, 1, 9};
//+
Surface(2) = {3};
//+
Curve Loop(5) = {8, 12, -1};
//+
Surface(3) = {5};
//+
Curve Loop(7) = {12, 2, -5};
//+
Surface(4) = {7};
//+
Curve Loop(9) = {3, -10, -6};
//+
Surface(5) = {9};
//+
Curve Loop(11) = {10, 4, -7};
//+
Surface(6) = {11};
//+
Curve Loop(13) = {8, -11, 4};
//+
Surface(7) = {13};
//+
Curve Loop(15) = {11, 5, 3};
//+
Surface(8) = {15};
//+
Surface Loop(1) = {4, 3, 2, 6, 5, 8, 7, 1};
//+
Volume(1) = {1};
//+
Physical Point("1", 17) = {1, 4, 5, 3, 2, 6, 7};
//+
Physical Curve("1", 18) = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12};
//+
Physical Surface("1", 101) = {1, 2, 3, 4, 5, 6, 7, 8};
//+
Physical Volume ("1", 20) = {1};
