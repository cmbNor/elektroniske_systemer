model tyristor
  Modelica.Electrical.Analog.Ideal.IdealThyristor thyristor annotation(
    Placement(transformation(origin = {-10, 30}, extent = {{-10, 10}, {10, -10}}, rotation = -0)));
  Modelica.Electrical.Analog.Basic.Resistor resistor annotation(
    Placement(transformation(origin = {40, 10}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
  Modelica.Electrical.Analog.Basic.Ground ground annotation(
    Placement(transformation(origin = {-60, -40}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Electrical.Analog.Sources.SineVoltageVariableFrequencyAndAmplitude sineVoltage(useConstantAmplitude = true, constantAmplitude = 325, useConstantFrequency = true, constantFrequency = 50)  annotation(
    Placement(transformation(origin = {-60, 10}, extent = {{10, -10}, {-10, 10}}, rotation = 90)));
  Modelica.Blocks.Sources.BooleanPulse booleanPulse(period(displayUnit = "ms") = 0.01, startTime(displayUnit = "ms") = 0.005, width = 4) annotation(
    Placement(transformation(origin = {-8, -8}, extent = {{-22, 0}, {-6, 16}})));
equation
  connect(thyristor.n, resistor.p) annotation(
    Line(points = {{0, 30}, {40, 30}, {40, 20}}, color = {0, 0, 255}));
  connect(booleanPulse.y, thyristor.fire) annotation(
    Line(points = {{-14, 0}, {0, 0}, {0, 18}}, color = {255, 0, 255}));
  connect(sineVoltage.p, thyristor.p) annotation(
    Line(points = {{-60, 20}, {-60, 30}, {-20, 30}}, color = {0, 0, 255}));
  connect(ground.p, sineVoltage.n) annotation(
    Line(points = {{-60, -30}, {-60, 0}}, color = {0, 0, 255}));
  connect(resistor.n, ground.p) annotation(
    Line(points = {{40, 0}, {40, -20}, {-60, -20}, {-60, -30}}, color = {0, 0, 255}));
  annotation(
    uses(Modelica(version = "4.0.0")),
  Documentation,
  experiment(StartTime = 0, StopTime = 0.04, Tolerance = 1e-06, Interval = 8e-05));
end tyristor;
