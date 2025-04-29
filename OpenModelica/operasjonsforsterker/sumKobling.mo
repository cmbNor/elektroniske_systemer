model temp
  Modelica.Electrical.Analog.Basic.Resistor R2[2](R(displayUnit = "kOhm") = 1e4)  annotation(
    Placement(transformation(origin = {-6, 50}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Electrical.Analog.Basic.Resistor R1[1](R(displayUnit = "kOhm") = 1e4)  annotation(
    Placement(transformation(origin = {-6, 70}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Electrical.Analog.Basic.Resistor R3[3](R(displayUnit = "kOhm") = 1e4)  annotation(
    Placement(transformation(origin = {-6, 28}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Electrical.Analog.Sources.ConstantVoltage Uinn1[1](V = 0.1)  annotation(
    Placement(transformation(origin = {-86, 6}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
  Modelica.Electrical.Analog.Sources.ConstantVoltage Uinn2[2](V = 0.2)  annotation(
    Placement(transformation(origin = {-62, 6}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
  Modelica.Electrical.Analog.Sources.ConstantVoltage Uinn3[3](V = 0.3)  annotation(
    Placement(transformation(origin = {-40, 6}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
  Modelica.Electrical.Analog.Basic.Resistor RK[K](R(displayUnit = "kOhm") = 1.2e5)  annotation(
    Placement(transformation(origin = {50, 90}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Electrical.Analog.Basic.Ground ground annotation(
    Placement(transformation(origin = {-62, -34}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Electrical.Analog.Basic.OpAmp opAmp1 annotation(
    Placement(transformation(origin = {50, 22}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Electrical.Analog.Sources.ConstantVoltage nVcc(V = 15)  annotation(
    Placement(transformation(origin = {50, -8}, extent = {{-10, -10}, {10, 10}}, rotation = 90)));
  Modelica.Electrical.Analog.Sources.ConstantVoltage pVcc(V = 15)  annotation(
    Placement(transformation(origin = {50, 54}, extent = {{-10, -10}, {10, 10}}, rotation = 90)));
equation
  connect(Uinn1.p, R1.p) annotation(
    Line(points = {{-86, 16}, {-86, 70}, {-16, 70}}, color = {0, 0, 255}));
  connect(R2.p, Uinn2.p) annotation(
    Line(points = {{-16, 50}, {-62, 50}, {-62, 16}}, color = {0, 0, 255}));
  connect(R3.p, Uinn3.p) annotation(
    Line(points = {{-16, 28}, {-40, 28}, {-40, 16}}, color = {0, 0, 255}));
  connect(Uinn1.n, ground.p) annotation(
    Line(points = {{-86, -4}, {-62, -4}, {-62, -24}}, color = {0, 0, 255}));
  connect(Uinn2.n, ground.p) annotation(
    Line(points = {{-62, -4}, {-62, -24}}, color = {0, 0, 255}));
  connect(Uinn3.n, ground.p) annotation(
    Line(points = {{-40, -4}, {-62, -4}, {-62, -24}}, color = {0, 0, 255}));
  connect(RK.n, opAmp1.out) annotation(
    Line(points = {{60, 90}, {66, 90}, {66, 22}, {60, 22}}, color = {0, 0, 255}));
  connect(R1.n, opAmp1.in_n) annotation(
    Line(points = {{4, 70}, {26, 70}, {26, 28}, {40, 28}}, color = {0, 0, 255}));
  connect(R2.n, opAmp1.in_n) annotation(
    Line(points = {{4, 50}, {26, 50}, {26, 28}, {40, 28}}, color = {0, 0, 255}));
  connect(R3.n, opAmp1.in_n) annotation(
    Line(points = {{4, 28}, {40, 28}}, color = {0, 0, 255}));
  connect(ground.p, opAmp1.in_p) annotation(
    Line(points = {{-62, -24}, {20, -24}, {20, 16}, {40, 16}}, color = {0, 0, 255}));
  connect(RK.p, opAmp1.in_n) annotation(
    Line(points = {{40, 90}, {32, 90}, {32, 28}, {40, 28}}, color = {0, 0, 255}));
  connect(nVcc.n, opAmp1.VMin) annotation(
    Line(points = {{50, 2}, {50, 12}}, color = {0, 0, 255}));
  connect(nVcc.p, ground.p) annotation(
    Line(points = {{50, -18}, {50, -24}, {-62, -24}}, color = {0, 0, 255}));
  connect(pVcc.p, opAmp1.VMax) annotation(
    Line(points = {{50, 44}, {50, 32}}, color = {0, 0, 255}));
  connect(pVcc.n, ground.p) annotation(
    Line(points = {{50, 64}, {88, 64}, {88, -24}, {-62, -24}}, color = {0, 0, 255}));
  annotation(
    uses(Modelica(version = "4.0.0")));
end temp;
