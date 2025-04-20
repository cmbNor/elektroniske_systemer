model transistor
  Modelica.Electrical.Analog.Semiconductors.NPN npn(Phic = 0.7)  annotation(
    Placement(transformation(origin = {10, -12}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Electrical.Analog.Basic.Resistor resistor(R(displayUnit = "kOhm") = 47000)  annotation(
    Placement(transformation(origin = {-40, 30}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
  Modelica.Electrical.Analog.Basic.Resistor resistor1(R(displayUnit = "kOhm") = 15000)  annotation(
    Placement(transformation(origin = {-40, -50}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
  Modelica.Electrical.Analog.Basic.Resistor resistor2(R(displayUnit = "kOhm") = 2700)  annotation(
    Placement(transformation(origin = {20, 30}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
  Modelica.Electrical.Analog.Basic.Resistor resistor3(R(displayUnit = "kOhm") = 1200)  annotation(
    Placement(transformation(origin = {20, -50}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
  Modelica.Electrical.Analog.Sources.SupplyVoltage supplyVoltage(Vps = 12, Vns = 0)  annotation(
    Placement(transformation(origin = {60, -10}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
equation
  connect(resistor.n, resistor1.p) annotation(
    Line(points = {{-40, 20}, {-40, -40}}, color = {0, 0, 255}));
  connect(resistor2.n, npn.C) annotation(
    Line(points = {{20, 20}, {20, -6}}, color = {0, 0, 255}));
  connect(npn.E, resistor3.p) annotation(
    Line(points = {{20, -18}, {20, -40}}, color = {0, 0, 255}));
  connect(supplyVoltage.pin_p, resistor.p) annotation(
    Line(points = {{60, 0}, {60, 48}, {-40, 48}, {-40, 40}}, color = {0, 0, 255}));
  connect(resistor2.p, supplyVoltage.pin_p) annotation(
    Line(points = {{20, 40}, {20, 48}, {60, 48}, {60, 0}}, color = {0, 0, 255}));
  connect(resistor1.n, supplyVoltage.pin_n) annotation(
    Line(points = {{-40, -60}, {-40, -68}, {60, -68}, {60, -20}}, color = {0, 0, 255}));
  connect(resistor3.n, supplyVoltage.pin_n) annotation(
    Line(points = {{20, -60}, {20, -68}, {60, -68}, {60, -20}}, color = {0, 0, 255}));
  connect(npn.B, resistor.n) annotation(
    Line(points = {{0, -12}, {-40, -12}, {-40, 20}}, color = {0, 0, 255}));

annotation(
    uses(Modelica(version = "4.0.0")));
end transistor;
