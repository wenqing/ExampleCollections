Mesh.Algorithm = 6;
Mesh.CharacteristicLengthMin = 0.05;
Mesh.CharacteristicLengthMax = 4.0;
s_heater=0.01;
Point(204) = {0, 0., 0, s_heater};
Point(205) = {0, 0., 0.375, s_heater};
Point(206) = {0, 0., -0.375, s_heater};
Point(207) = {-0.375, 0., 0., s_heater};

//+
Circle(10) = {206, 204, 207};
//+
Circle(11) = {207, 204, 205};

//+
Physical Line("Tunnel") = {10, 11};
