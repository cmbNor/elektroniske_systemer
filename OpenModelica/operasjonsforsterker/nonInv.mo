model test2
  Modelica.Electrical.Analog.Basic.Resistor R4(R(displayUnit = "kOhm") = 4700) annotation(
    Placement(transformation(origin = {20, -38}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
  Modelica.Electrical.Analog.Basic.Resistor R10(R(displayUnit = "kOhm") = 1e5) annotation(
    Placement(transformation(origin = {20, -8}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
  Modelica.Electrical.Analog.Basic.OpAmp opAmp annotation(
    Placement(transformation(origin = {-10, 10}, extent = {{-10, 10}, {10, -10}}, rotation = -0)));
  Modelica.Electrical.Analog.Sources.ConstantVoltage pVcc(V = 20) annotation(
    Placement(transformation(origin = {-10, -42}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
  Modelica.Electrical.Analog.Basic.Ground ground annotation(
    Placement(transformation(origin = {10, -70}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Electrical.Analog.Sources.ConstantVoltage nVcc(V = 20) annotation(
    Placement(transformation(origin = {-10, 42}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
  Modelica.Electrical.Analog.Sources.SineVoltage sineVoltage(V = 1) annotation(
    Placement(transformation(origin = {-80, -10}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
equation
  connect(R10.n, R4.p) annotation(
    Line(points = {{20, -18}, {20, -28}}, color = {0, 0, 255}));
  connect(opAmp.in_n, R4.p) annotation(
    Line(points = {{-20, 4}, {-32, 4}, {-32, -24}, {20, -24}, {20, -28}}, color = {0, 0, 255}));
  connect(opAmp.out, R10.p) annotation(
    Line(points = {{0, 10}, {20, 10}, {20, 2}}, color = {0, 0, 255}));
  connect(R4.n, ground.p) annotation(
    Line(points = {{20, -48}, {20, -58}, {10, -58}, {10, -60}}, color = {0, 0, 255}));
  connect(pVcc.n, ground.p) annotation(
    Line(points = {{-10, -52}, {-10, -58}, {10, -58}, {10, -60}}, color = {0, 0, 255}));
  connect(pVcc.p, opAmp.VMax) annotation(
    Line(points = {{-10, -32}, {-10, 0}}, color = {0, 0, 255}));
  connect(opAmp.VMin, nVcc.n) annotation(
    Line(points = {{-10, 20}, {-10, 32}}, color = {0, 0, 255}));
  connect(nVcc.p, ground.p) annotation(
    Line(points = {{-10, 52}, {-10, 60}, {40, 60}, {40, -58}, {10, -58}, {10, -60}}, color = {0, 0, 255}));
  connect(sineVoltage.p, opAmp.in_p) annotation(
    Line(points = {{-80, 0}, {-80, 16}, {-20, 16}}, color = {0, 0, 255}));
  connect(sineVoltage.n, ground.p) annotation(
    Line(points = {{-80, -20}, {-82, -20}, {-82, -58}, {10, -58}, {10, -60}}, color = {0, 0, 255}));
  annotation(
    uses(Modelica(version = "4.0.0")),
    Diagram(graphics = {Text(origin = {-60, -11}, extent = {{-6, 9}, {6, -9}}, textString = "1[V]")}));
end test2;
