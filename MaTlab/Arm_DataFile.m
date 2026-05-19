% Simscape(TM) Multibody(TM) version: 24.1

% This is a model data file derived from a Simscape Multibody Import XML file using the smimport function.
% The data in this file sets the block parameter values in an imported Simscape Multibody model.
% For more information on this file, see the smimport function help page in the Simscape Multibody documentation.
% You can modify numerical values, but avoid any other changes to this file.
% Do not add code to this file. Do not edit the physical units shown in comments.

%%%VariableName:smiData


%============= RigidTransform =============%

%Initialize the RigidTransform structure array by filling in null values.
smiData.RigidTransform(28).translation = [0.0 0.0 0.0];
smiData.RigidTransform(28).angle = 0.0;
smiData.RigidTransform(28).axis = [0.0 0.0 0.0];
smiData.RigidTransform(28).ID = "";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(1).translation = [0 -3.1454781317303717 -10];  % mm
smiData.RigidTransform(1).angle = 3.1415926535897931;  % rad
smiData.RigidTransform(1).axis = [0 0 1];
smiData.RigidTransform(1).ID = "UCS[Arm2*:*Default:SMLINK_c1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(2).translation = [5.5000000000000027 -96.000000000000043 -3.4999999999999987];  % mm
smiData.RigidTransform(2).angle = 3.0592440532820162;  % rad
smiData.RigidTransform(2).axis = [-0.041197583855966911 -0.70650646107605797 0.70650646107605786];
smiData.RigidTransform(2).ID = "UCS[Arm2*:*Default:SMLINK_d0]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(3).translation = [0 0 0];  % mm
smiData.RigidTransform(3).angle = 2.0943951023931953;  % rad
smiData.RigidTransform(3).axis = [-0.57735026918962584 0.57735026918962584 0.57735026918962584];
smiData.RigidTransform(3).ID = "UCS[BaseT*:*Default:SMLINK_base]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(4).translation = [0 56.999999999999993 0];  % mm
smiData.RigidTransform(4).angle = 2.0943951023931953;  % rad
smiData.RigidTransform(4).axis = [-0.57735026918962573 0.57735026918962584 0.57735026918962584];
smiData.RigidTransform(4).ID = "UCS[BaseT*:*Default:SMLINK_a0]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(5).translation = [-11.457967163503742 -37.477238974371424 25];  % mm
smiData.RigidTransform(5).angle = 1.5707963267948968;  % rad
smiData.RigidTransform(5).axis = [-1 -4.4148410036988926e-16 4.4148410036988926e-16];
smiData.RigidTransform(5).ID = "UCS[WaistT*:*Default:SMLINK_a1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(6).translation = [0 0 17];  % mm
smiData.RigidTransform(6).angle = 0;  % rad
smiData.RigidTransform(6).axis = [0 0 0];
smiData.RigidTransform(6).ID = "UCS[WaistT*:*Default:SMLINK_b0]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(7).translation = [0 -60.000000000000007 12];  % mm
smiData.RigidTransform(7).angle = 3.1415926535897931;  % rad
smiData.RigidTransform(7).axis = [0 1 0];
smiData.RigidTransform(7).ID = "UCS[Arm1*:*Default:SMLINK_b1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(8).translation = [0 60.000000000000007 12];  % mm
smiData.RigidTransform(8).angle = 1.5707963267948968;  % rad
smiData.RigidTransform(8).axis = [0 0 1];
smiData.RigidTransform(8).ID = "UCS[Arm1*:*Default:SMLINK_c0]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(9).translation = [0 0 0];  % mm
smiData.RigidTransform(9).angle = 1.5707963267948968;  % rad
smiData.RigidTransform(9).axis = [-1 -0 -0];
smiData.RigidTransform(9).ID = "UCS[gripper*:*Default:SMLINK_f1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(10).translation = [48.648031394737849 0 6.5910194434266325];  % mm
smiData.RigidTransform(10).angle = 1.5707963267948968;  % rad
smiData.RigidTransform(10).axis = [-1 -0 -0];
smiData.RigidTransform(10).ID = "UCS[gripper*:*Default:SMLINK_endEffector]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(11).translation = [14.000000432158155 -14.218525005038842 -9.4999996199754726];  % mm
smiData.RigidTransform(11).angle = 1.5707963267948968;  % rad
smiData.RigidTransform(11).axis = [5.6719075282048334e-16 -1 5.6719075282048334e-16];
smiData.RigidTransform(11).ID = "UCS[Gripper _base*:*Default:SMLINK_e1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(12).translation = [31.910091824036293 -52.001420951968662 5];  % mm
smiData.RigidTransform(12).angle = 1.570796326794861;  % rad
smiData.RigidTransform(12).axis = [0 0 -1];
smiData.RigidTransform(12).ID = "UCS[Gripper _base*:*Default:SMLINK_f0]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(13).translation = [-5.0000000000000044 -29.5 14];  % mm
smiData.RigidTransform(13).angle = 1.5707963267948968;  % rad
smiData.RigidTransform(13).axis = [-1 -0 -0];
smiData.RigidTransform(13).ID = "UCS[L*:*Default:SMLINK_d1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(14).translation = [0 0 0];  % mm
smiData.RigidTransform(14).angle = 3.1415926535897931;  % rad
smiData.RigidTransform(14).axis = [1 0 0];
smiData.RigidTransform(14).ID = "UCS[L*:*Default:SMLINK_e0]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(15).translation = [0 0 0];  % mm
smiData.RigidTransform(15).angle = 0;  % rad
smiData.RigidTransform(15).axis = [0 0 0];
smiData.RigidTransform(15).ID = "B[BaseT-1:-:]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(16).translation = [0 0 0];  % mm
smiData.RigidTransform(16).angle = 0;  % rad
smiData.RigidTransform(16).axis = [0 0 0];
smiData.RigidTransform(16).ID = "F[BaseT-1:-:]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(17).translation = [31.9100918240363 -52.001420951968662 5.0000000000000044];  % mm
smiData.RigidTransform(17).angle = 0;  % rad
smiData.RigidTransform(17).axis = [0 0 0];
smiData.RigidTransform(17).ID = "B[Gripper _base-2:-:gripper-1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(18).translation = [-2.2345744458608631e-10 4.2932692796302739e-11 -2.3041936654531729e-10];  % mm
smiData.RigidTransform(18).angle = 2.0943951023931962;  % rad
smiData.RigidTransform(18).axis = [-0.57735026918962595 -0.57735026918962762 -0.57735026918962373];
smiData.RigidTransform(18).ID = "F[Gripper _base-2:-:gripper-1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(19).translation = [0 60 12.000000000000005];  % mm
smiData.RigidTransform(19).angle = 3.1415926535897931;  % rad
smiData.RigidTransform(19).axis = [1 0 0];
smiData.RigidTransform(19).ID = "B[Arm1-1:-:Arm2-1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(20).translation = [2.4158453015843406e-13 -3.1454781317292717 -10.000000000000036];  % mm
smiData.RigidTransform(20).angle = 3.1415926535897896;  % rad
smiData.RigidTransform(20).axis = [1 1.4080191947656805e-30 8.1262480322517291e-16];
smiData.RigidTransform(20).ID = "F[Arm1-1:-:Arm2-1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(21).translation = [0 56.999999999999993 0];  % mm
smiData.RigidTransform(21).angle = 2.0943951023931953;  % rad
smiData.RigidTransform(21).axis = [0.57735026918962584 -0.57735026918962584 0.57735026918962584];
smiData.RigidTransform(21).ID = "B[BaseT-1:-:WaistT-1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(22).translation = [-11.457967163503721 -37.477238974371424 25.000000000000007];  % mm
smiData.RigidTransform(22).angle = 2.0943951023931953;  % rad
smiData.RigidTransform(22).axis = [0.57735026918962584 -0.57735026918962584 0.57735026918962562];
smiData.RigidTransform(22).ID = "F[BaseT-1:-:WaistT-1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(23).translation = [0 0 17];  % mm
smiData.RigidTransform(23).angle = 3.1415926535897931;  % rad
smiData.RigidTransform(23).axis = [1 0 0];
smiData.RigidTransform(23).ID = "B[WaistT-1:-:Arm1-1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(24).translation = [-7.815970093361102e-14 -60.000000000000647 12.000000000000307];  % mm
smiData.RigidTransform(24).angle = 3.3531181933347808e-15;  % rad
smiData.RigidTransform(24).axis = [-0.59854991831231963 -0.80108551059691213 8.0389276284777291e-16];
smiData.RigidTransform(24).ID = "F[WaistT-1:-:Arm1-1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(25).translation = [5.5000000000000604 -69.000000000000057 -3.5000000000000031];  % mm
smiData.RigidTransform(25).angle = 2.0943951023931953;  % rad
smiData.RigidTransform(25).axis = [0.57735026918962584 -0.57735026918962584 0.57735026918962584];
smiData.RigidTransform(25).ID = "B[Arm2-1:-:L-2]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(26).translation = [-4.9999999999999645 -56.500000000000121 13.999999999999975];  % mm
smiData.RigidTransform(26).angle = 2.0943951023931953;  % rad
smiData.RigidTransform(26).axis = [-0.57735026918962562 -0.57735026918962551 -0.57735026918962606];
smiData.RigidTransform(26).ID = "F[Arm2-1:-:L-2]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(27).translation = [0 0 13.000000000000005];  % mm
smiData.RigidTransform(27).angle = 3.1415926535897931;  % rad
smiData.RigidTransform(27).axis = [1 0 0];
smiData.RigidTransform(27).ID = "B[L-2:-:Gripper _base-2]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(28).translation = [27.000000431961112 -14.218525005262757 -9.4999996200046848];  % mm
smiData.RigidTransform(28).angle = 2.0943951023931962;  % rad
smiData.RigidTransform(28).axis = [-0.57735026918962706 -0.57735026918962606 0.57735026918962429];
smiData.RigidTransform(28).ID = "F[L-2:-:Gripper _base-2]";


%============= Solid =============%
%Center of Mass (CoM) %Moments of Inertia (MoI) %Product of Inertia (PoI)

%Initialize the Solid structure array by filling in null values.
smiData.Solid(7).mass = 0.0;
smiData.Solid(7).CoM = [0.0 0.0 0.0];
smiData.Solid(7).MoI = [0.0 0.0 0.0];
smiData.Solid(7).PoI = [0.0 0.0 0.0];
smiData.Solid(7).color = [0.0 0.0 0.0];
smiData.Solid(7).opacity = 0.0;
smiData.Solid(7).ID = "";

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(1).mass = 0.067327140709422792;  % kg
smiData.Solid(1).CoM = [-0.11718641034995923 -44.017016413647987 -2.8476552534095454];  % mm
smiData.Solid(1).MoI = [75.068694588222883 15.544997113828343 83.198702549776399];  % kg*mm^2
smiData.Solid(1).PoI = [-0.67387453587454793 -0.072292575012034094 -0.41417962247557427];  % kg*mm^2
smiData.Solid(1).color = [0.792156862745098 0.81960784313725488 0.93333333333333335];
smiData.Solid(1).opacity = 1;
smiData.Solid(1).ID = "Arm2*:*Default";

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(2).mass = 0.098846102248456733;  % kg
smiData.Solid(2).CoM = [0.2565592175006054 22.699233775511413 0.00026551691840941317];  % mm
smiData.Solid(2).MoI = [130.47287366826149 212.93020615239755 142.85873314549434];  % kg*mm^2
smiData.Solid(2).PoI = [0.00023161303154280266 0.00046312775410922149 -3.903885973107533];  % kg*mm^2
smiData.Solid(2).color = [0.792156862745098 0.81960784313725488 0.93333333333333335];
smiData.Solid(2).opacity = 1;
smiData.Solid(2).ID = "BaseT*:*Default";

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(3).mass = 0.061716479050200175;  % kg
smiData.Solid(3).CoM = [-10.079493812457814 -21.858759619647248 17.713594819096755];  % mm
smiData.Solid(3).MoI = [42.273343433127685 52.080373389672687 50.190703995302783];  % kg*mm^2
smiData.Solid(3).PoI = [6.2580475384623817 1.0042733841540872 -4.5940151686048845];  % kg*mm^2
smiData.Solid(3).color = [0.792156862745098 0.81960784313725488 0.93333333333333335];
smiData.Solid(3).opacity = 1;
smiData.Solid(3).ID = "WaistT*:*Default";

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(4).mass = 0.071076600743219143;  % kg
smiData.Solid(4).CoM = [0.083397882171340754 -0.34591775321850504 3.2875693446522862];  % mm
smiData.Solid(4).MoI = [108.23755931698204 10.614268911565803 113.14982318852253];  % kg*mm^2
smiData.Solid(4).PoI = [0.10729304456098761 -0.02549513040336868 0.46739919897802695];  % kg*mm^2
smiData.Solid(4).color = [0.792156862745098 0.81960784313725488 0.93333333333333335];
smiData.Solid(4).opacity = 1;
smiData.Solid(4).ID = "Arm1*:*Default";

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(5).mass = 0.031089933015213171;  % kg
smiData.Solid(5).CoM = [26.488486105326185 5 0];  % mm
smiData.Solid(5).MoI = [9.0225499458542622 23.376840906835543 14.872456511234828];  % kg*mm^2
smiData.Solid(5).PoI = [0 0 0];  % kg*mm^2
smiData.Solid(5).color = [0.792156862745098 0.81960784313725488 0.93333333333333335];
smiData.Solid(5).opacity = 1;
smiData.Solid(5).ID = "gripper*:*Default";

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(6).mass = 0.017200089894232214;  % kg
smiData.Solid(6).CoM = [16.389470019519855 -37.831977112398761 -3.3354283622347873];  % mm
smiData.Solid(6).MoI = [7.904346077594929 2.8718273050796959 8.8437032464831926];  % kg*mm^2
smiData.Solid(6).PoI = [1.5396921146802123 -0.4138132813275347 1.647801089222571];  % kg*mm^2
smiData.Solid(6).color = [0.792156862745098 0.81960784313725488 0.93333333333333335];
smiData.Solid(6).opacity = 1;
smiData.Solid(6).ID = "Gripper _base*:*Default";

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(7).mass = 0.016437611779736943;  % kg
smiData.Solid(7).CoM = [0.027607602910443386 -11.732535203407972 8.6455852062933722];  % mm
smiData.Solid(7).MoI = [3.8988745135085283 2.6706058176528895 4.9413082855002131];  % kg*mm^2
smiData.Solid(7).PoI = [0.58927361438585568 -0.0024298498115266453 0.0073822252837943327];  % kg*mm^2
smiData.Solid(7).color = [0.792156862745098 0.81960784313725488 0.93333333333333335];
smiData.Solid(7).opacity = 1;
smiData.Solid(7).ID = "L*:*Default";


%============= Joint =============%
%X Revolute Primitive (Rx) %Y Revolute Primitive (Ry) %Z Revolute Primitive (Rz)
%X Prismatic Primitive (Px) %Y Prismatic Primitive (Py) %Z Prismatic Primitive (Pz) %Spherical Primitive (S)
%Constant Velocity Primitive (CV) %Lead Screw Primitive (LS)
%Position Target (Pos)

%Initialize the RevoluteJoint structure array by filling in null values.
smiData.RevoluteJoint(6).Rz.Pos = 0.0;
smiData.RevoluteJoint(6).ID = "";

smiData.RevoluteJoint(1).Rz.Pos = -175.31302864445971;  % deg
smiData.RevoluteJoint(1).ID = "[Gripper _base-2:-:gripper-1]";

smiData.RevoluteJoint(2).Rz.Pos = 138.49021780899324;  % deg
smiData.RevoluteJoint(2).ID = "[Arm1-1:-:Arm2-1]";

smiData.RevoluteJoint(3).Rz.Pos = -59.350624923107148;  % deg
smiData.RevoluteJoint(3).ID = "[BaseT-1:-:WaistT-1]";

smiData.RevoluteJoint(4).Rz.Pos = -157.45775213881649;  % deg
smiData.RevoluteJoint(4).ID = "[WaistT-1:-:Arm1-1]";

smiData.RevoluteJoint(5).Rz.Pos = 19.499249362330872;  % deg
smiData.RevoluteJoint(5).ID = "[Arm2-1:-:L-2]";

smiData.RevoluteJoint(6).Rz.Pos = 41.082655177313747;  % deg
smiData.RevoluteJoint(6).ID = "[L-2:-:Gripper _base-2]";

