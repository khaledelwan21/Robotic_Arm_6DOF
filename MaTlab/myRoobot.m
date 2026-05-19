[dof6,ArmInfo]=importrobot("Arm");

t = linspace(pi/2, pi/2 + 2*pi, 11);
r = [3, 1.2, 3, 1.2, 3, 1.2, 3, 1.2, 3, 1.2, 3];
x = 23 + r.*cos(t);
y = 5  + r.*sin(t)*6;
z = ones(1,11) * 20;

wp = [x; y; z];
x1 = linspace(0, 10, size(wp,2));
v  = zeros(3, size(wp,2));

dof6.Bodies{2}.Joint.PositionLimits = deg2rad([-90 90]);
dof6.Bodies{1}.Joint.PositionLimits = deg2rad([-90 90]);
dof6.Bodies{3}.Joint.PositionLimits = deg2rad([-90 90]);
dof6.Bodies{4}.Joint.PositionLimits = deg2rad([-90 90]);
dof6.Bodies{5}.Joint.PositionLimits = deg2rad([-90 90]);
dof6.Bodies{6}.Joint.PositionLimits = deg2rad([-90 90]);