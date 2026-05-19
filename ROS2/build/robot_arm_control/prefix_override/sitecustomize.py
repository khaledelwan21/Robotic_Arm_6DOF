import sys
if sys.prefix == '/usr':
    sys.real_prefix = sys.prefix
    sys.prefix = sys.exec_prefix = '/home/khaled-ahmed-elwan/ros2_arm_ws/install/robot_arm_control'
