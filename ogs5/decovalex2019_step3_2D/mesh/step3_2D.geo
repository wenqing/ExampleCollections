Mesh.Algorithm = 6;
Mesh.CharacteristicLengthMin = 0.05;
Mesh.CharacteristicLengthMax = 4.0;
s_corner=5.0;
Point(200) = {0, 0., -25.0, s_corner};
Point(201) = {-28.4, 0., -25.0, s_corner};
Point(202) = {-28.4, 0., 25.0, s_corner};
Point(203) = {0, 0., 25.0, s_corner};
s_heater=0.01;
Point(204) = {0, 0., 0, s_heater};
Point(205) = {0, 0., 0.375, s_heater};
Point(206) = {0, 0., -0.375, s_heater};
Point(207) = {-0.375, 0., 0., s_heater};
Point(208) = {-2.42, 0., 0.22, 4*s_heater};


//+
Line(1) = {200, 201};
//+
Line(2) = {201, 202};
//+
Line(3) = {202, 203};
//+
Line(4) = {203, 205};
//+
Line(5) = {205, 204};
//+
Line(6) = {204, 206};
//+
Line(7) = {206, 200};
//+
//+
Circle(10) = {206, 204, 207};
//+
Circle(11) = {207, 204, 205};
//+
Line Loop(1) = {4, -11, -10, 7, 1, 2, 3};
//+
Plane Surface(1) = {1};
//+
Line Loop(2) = {10, 11, 5, 6};
//+
Plane Surface(2) = {2};

Point {208} In Surface {1}; 
//+
Physical Surface("RockMass") = {1};
//+
Physical Surface("Tunnel") = {2};
