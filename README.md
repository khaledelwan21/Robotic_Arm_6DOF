# 🦾 6-DOF Robotic Arm — Full Pipeline

> Trajectory Planning · Inverse Kinematics · ROS2 MoveIt2 · Real-Time Simulation · ESP32 Hardware Control

[![ROS2](https://img.shields.io/badge/ROS2-Jazzy-blue?logo=ros)](https://docs.ros.org/en/jazzy)
[![MATLAB](https://img.shields.io/badge/MATLAB-R2024a-orange?logo=mathworks)](https://www.mathworks.com)
[![MoveIt2](https://img.shields.io/badge/MoveIt2-2.12.4-green)](https://moveit.ros.org)
[![ESP32](https://img.shields.io/badge/Hardware-ESP32--WROOM-red)](https://www.espressif.com)
[![License](https://img.shields.io/badge/License-MIT-yellow)](LICENSE)

---

## 📌 Project Overview

A complete end-to-end 6 Degrees-of-Freedom robotic arm project developed at **Alexandria University, Faculty of Engineering**.

This repository covers the full development pipeline — from mechanical CAD design to physics simulation, trajectory planning, motion planning in ROS2, custom PCB hardware, and real-time teleoperation via PlayStation controller.

**Team:**
- Khaled Ahmed Elwan — ID: 8782
- Taha Ahmed Elaghoury — ID: 8745
- Marwan Mahmoud Ali Bakhit — ID: 9023

**Supervisor:** Dr. Sohair Rezeka

---

## 🗂️ Repository Structure

```
robotic-arm-6dof/
├── Matlab/                        # MATLAB Simscape simulation & trajectory planning
│   ├── ArmFK.slx                  # Main Simscape Multibody model
│   ├── myRoobot.m                 # Rigid body tree definition
│   ├── Arm_DataFile.m             # Link/joint data
│   ├── trajPlot.m                 # Trajectory visualization
│   └── FK_Plot.m                  # Forward kinematics plots
│
├── src/                           # ROS2 workspace packages
│   ├── robot_arm_description/     # URDF + STL meshes
│   ├── robot_arm_moveit_config/   # MoveIt2 configuration
│   └── robot_arm_control/         # Python trajectory scripts (MoveItPy)
│
├── pcb/                           # Custom PCB design (KiCad)
│
├── docs/
│   └── report.pdf                 # Full technical report
│
└── README.md
```

---

## 🔧 System Specifications

| Parameter | Value |
|-----------|-------|
| Degrees of Freedom | 6 DOF |
| Joint Configuration | All Revolute |
| Joint Names | Shoulder · Elbow · Wrist · Rolling · Pitch · Gripper |
| Microcontroller | ESP32-WROOM DevKitC |
| Servo Motors | 5× MG996R + 1× SG90 |
| Simulation Engine | MATLAB Simscape Multibody |
| Motion Planner | OMPL RRTConnect (via MoveIt2) |
| IK Solver | KDL Kinematics Plugin |
| ROS Version | ROS2 Jazzy Jalisco |
| CAD Tool | SolidWorks 2023 |
| PCB Tool | KiCad |

---

## 📐 DH Parameters

| Joint | Link | a (mm) | d (mm) | α (°) | θ |
|-------|------|--------|--------|-------|---|
| 1 | Shoulder | 0 | 57 | 90 | θ1 |
| 2 | Elbow | 37.5 | 0 | 0 | θ2 |
| 3 | Wrist | 120 | 0 | 0 | θ3 |
| 4 | Rolling | 99.7 | 14.5 | 90 | θ4 |
| 5 | Pitch | 22.7 | 0 | -90 | θ5 |
| 6 | Gripper Base | 37.8 | 14.5 | 0 | θ6 |

---

## 🚀 Pipeline Overview

```
SolidWorks CAD
      ↓
MATLAB Simscape Multibody
      ↓  (Physics simulation + DH parameters)
Polynomial Trajectory Planner (5th-order)
      ↓  (Smooth waypoint interpolation)
IK Solver (MATLAB Robotics Toolbox)
      ↓  (Joint angles from Cartesian poses)
ESP32 Hardware Control (50Hz streaming via MATLAB)
      ↓
──────────────────────────────
SW2URDF Export (SolidWorks)
      ↓
ROS2 Jazzy + MoveIt2
      ↓  (OMPL RRTConnect + KDL IK)
RViz2 Real-Time Simulation
      ↓
PS Controller Teleoperation (Bluetooth)
```

---

## 1️⃣ MATLAB Simscape Simulation

### Features
- **5th-order Polynomial Trajectory** interpolation between Cartesian waypoints
- **IK Solver** maps end-effector poses → joint angles in real time
- **Forward Kinematics** verification confirms sub-mm accuracy
- **3D Trajectory Animation** — star shape, heart shape, custom paths
- **Workspace Analysis** — full reachable volume (~300mm radius sphere)

### Joint Limits

| Joint | Min | Max |
|-------|-----|-----|
| Shoulder | -90° | +90° |
| Elbow | -90° | +90° |
| Wrist | -90° | +90° |
| Rolling | -90° | +90° |
| Pitch | -90° | +90° |
| Gripper | -90° | +90° |

### Run the Simulation

```matlab
% Open MATLAB R2024a
open('Matlab/ArmFK.slx')

% Run simulation
sim('ArmFK')

% Plot trajectory
run('Matlab/trajPlot.m')
```

---

## 2️⃣ ROS2 + MoveIt2 Setup

### Prerequisites

```bash
# Install ROS2 Jazzy
sudo apt install ros-jazzy-moveit
sudo apt install ros-jazzy-joint-state-publisher-gui
sudo apt install ros-jazzy-xacro
sudo apt install liburdfdom-tools
```

### Build

```bash
cd ros2_arm_ws
colcon build
source install/setup.bash
```

### Run

```bash
# Terminal 1 — Launch MoveIt2 + RViz2
ros2 launch robot_arm_moveit_config demo.launch.py

# Terminal 2 — Python trajectory control
ros2 launch robot_arm_control trajectory_planning.launch.py
```

### MoveIt2 Configuration
- **Planning Group:** `arm` (shoulder → elbow → wrist → rolling → pitch → follower-gear)
- **IK Solver:** KDL (`kdl_kinematics_plugin/KDLKinematicsPlugin`)
- **Motion Planner:** OMPL RRTConnect
- **Planning Time:** 5.0s | **Velocity Scaling:** 10%

---

## 3️⃣ PS Controller Teleoperation

Real-time Bluetooth teleoperation of the simulated arm via PlayStation controller:

```bash
# Install joy package
sudo apt install ros-jazzy-joy

# Connect PS controller via Bluetooth, then:
# Terminal 1 — Start MoveIt
ros2 launch robot_arm_moveit_config demo.launch.py

# Terminal 2 — Start joy node
ros2 run joy joy_node

# Terminal 3 — Start teleoperation
ros2 run robot_arm_control ps_teleop.py
```

---

## 4️⃣ ESP32 Hardware Control

### Angle Mapping Formula

```
servo_position = (joint_angle_deg + 90) / 180
```

| Joint Angle | Servo Position | Servo Angle |
|-------------|---------------|-------------|
| -90° | 0.0 | 0° |
| 0° | 0.5 | 90° |
| +90° | 1.0 | 180° |

### Pin Mapping

| Servo | ESP32 Pin | Joint |
|-------|-----------|-------|
| SERVO1 | D13 | Shoulder |
| SERVO2 | D12 | Elbow |
| SERVO3 | D14 | Wrist |
| SERVO4 | D27 | Rolling |
| SERVO5 | D26 | Pitch |
| SERVO6 | D25 | Gripper |

### Streaming from MATLAB

```matlab
% Connect to ESP32
a = arduino('COM9', 'ESP32');

% Stream joint angles at 50Hz
for i = 1:length(joint_angles)
    servo_pos = (joint_angles(i, :) + 90) / 180;
    writePosition(servo1, servo_pos(1));
    writePosition(servo2, servo_pos(2));
    % ... remaining joints
    pause(0.02); % 50Hz
end
```

---

## 5️⃣ Custom PCB

Designed in KiCad — clean ESP32 ↔ servo interface:

- 6-channel servo header connectors (SIGNAL · +5V · GND)
- 220µF electrolytic capacitor for servo power filtering
- Fuse protection on servo power rail
- Power jack for external 5V supply
- LED power indicator with 220Ω current-limiting resistor

---

## ✅ Results

| Objective | Status |
|-----------|--------|
| SolidWorks 3D mechanical design | ✅ Complete |
| Simscape Multibody physics simulation | ✅ Complete |
| Polynomial trajectory planning | ✅ Complete |
| IK solver integration | ✅ Complete |
| 3D end-effector animation | ✅ Complete |
| Robot workspace visualization | ✅ Complete |
| ROS2 Jazzy URDF model | ✅ Complete |
| MoveIt2 real-time motion planning | ✅ Complete |
| PS controller teleoperation | ✅ Complete |
| Custom PCB design | ✅ Complete |
| ESP32 servo hardware control | ✅ Complete |

---

## 🔮 Future Work

- [ ] TRAC-IK upgrade for better singularity handling
- [ ] Gazebo physics simulation
- [ ] Camera integration for visual feedback
- [ ] Full hardware loop: PS Controller → ROS2 → ESP32 → Real Servos
- [ ] Pick & Place demo task

---

## 📚 References

1. MATLAB Robotics System Toolbox Documentation, MathWorks, R2024a
2. Simscape Multibody User Guide, MathWorks, R2024a
3. MoveIt2 Documentation — https://moveit.ros.org
4. ROS2 Jazzy Documentation — https://docs.ros.org/en/jazzy
5. Craig, J.J., *Introduction to Robotics: Mechanics and Control*, 3rd ed., Pearson, 2005
6. ESP32 Technical Reference Manual, Espressif Systems, 2024


**Faculty of Engineering — Alexandria University — 2025/2026**

---

<p align="center">
  <i>Built with ❤️ at Alexandria University</i>
</p>
