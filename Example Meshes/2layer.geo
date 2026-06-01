// Gmsh project created on Fri Apr 10 08:16:45 2026
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
Point(8) = {0, 0, 0, cl_1};
//+
Point(9) = {278000/4, 0, 0, cl_1};
//+
Point(10) = {-278000/4, 0, 0, cl_1};
//+
Point(11) = {0, 238000/4, 0, cl_1};
//+
Point(12) = {0, -238000/4, 0, cl_1};
//+
Point(13) = {0, 0, 171000/4, cl_1};
//+
Point(14) = {0, 0, -171000/4, cl_1};
//+
Ellipse(13) = {9, 8, 10, 11};
//+
Ellipse(14) = {11, 8, 9, 10};
//+
Ellipse(15) = {10, 8, 9, 12};
//+
Ellipse(16) = {12, 8, 10, 9};
//+
Ellipse(17) = {14, 8, 9, 10};
//+
Ellipse(18) = {10, 8, 9, 13};
//+
Ellipse(19) = {13, 8, 10, 9};
//+
Ellipse(20) = {9, 8, 10, 14};
//+
Ellipse(21) = {11, 8, 12, 13};
//+
Ellipse(22) = {13, 8, 11, 12};
//+
Ellipse(23) = {12, 8, 11, 14};
//+
Ellipse(24) = {14, 8, 12, 11};
//+
Curve Loop(1) = {6, -9, 2};
//+
Surface(1) = {1};
//+
Curve Loop(3) = {7, 1, 9};
//+
Surface(2) = {3};
//+
Curve Loop(5) = {12, -1, 8};
//+
Surface(3) = {5};
//+
Curve Loop(7) = {5, -2, -12};
//+
Surface(4) = {7};
//+
Curve Loop(9) = {3, -10, -6};
//+
Surface(5) = {9};
//+
Curve Loop(11) = {4, -7, 10};
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
Curve Loop(17) = {21, 19, 13};
//+
Surface(9) = {17};
//+
Curve Loop(19) = {20, 24, -13};
//+
Surface(10) = {19};
//+
Curve Loop(21) = {17, -14, -24};
//+
Surface(11) = {21};
//+
Curve Loop(23) = {18, -21, 14};
//+
Surface(12) = {23};
//+
Curve Loop(25) = {18, 22, -15};
//+
Surface(13) = {25};
//+
Curve Loop(27) = {16, -19, 22};
//+
Surface(14) = {27};
//+
Curve Loop(29) = {20, -23, 16};
//+
Surface(15) = {29};
//+
Curve Loop(31) = {15, 23, 17};
//+
Surface(16) = {31};
//+
Surface Loop(1) = {11, 10, 9, 12, 13, 16, 15, 14};
//+
Volume(1) = {1};
//+
Surface Loop(2) = {4, 3, 7, 8, 5, 6, 2, 1};
//+
Volume(2) = {2};
//+
Physical Surface("rock", 101) = {1, 4, 3, 2, 6, 7, 5, 8};
//+
BooleanDifference(102) = { Volume{2}; }{ Volume{1}; };
//+
Physical Volume("metal", 103) = {1};
//+
Physical Volume("rock", 104) = {102};
