import rclpy
from rclpy.node import Node

from moveit_msgs.msg import DisplayTrajectory

import serial
import math
import time


class ESPBridge(Node):

    def __init__(self):

        super().__init__('esp_bridge')

        # ROS2 subscriber
        self.sub = self.create_subscription(
            DisplayTrajectory,
            '/display_planned_path',
            self.callback,
            10
        )

        # ESP serial
        self.ser = serial.Serial('/dev/ttyUSB1', 115200)

        print(" ESP Bridge Started")


    def rad_to_deg(self, rad):

        deg = (rad * 180.0 / math.pi)

        deg = deg + 90

        deg = max(0, min(180, deg))

        return int(deg)


    def callback(self, msg):

        if not msg.trajectory:
            return

        traj = msg.trajectory[0]

        names = traj.joint_trajectory.joint_names

        points = traj.joint_trajectory.points

        for p in points:

            joints = dict(zip(names, p.positions))

            shoulder = self.rad_to_deg(
                joints.get('shoulder', 0.0)
            )

            elbow = self.rad_to_deg(
                joints.get('elbow', 0.0)
            )

            wrist = self.rad_to_deg(
                joints.get('wrist', 0.0)
            )

            rolling = self.rad_to_deg(
                joints.get('rolling', 0.0)
            )

            pitch = self.rad_to_deg(
                joints.get('pitch', 0.0)
            )

            cmd = f"{shoulder},{elbow},{wrist},{rolling},{pitch}\n"

            self.ser.write(cmd.encode())

            print("Sent:", cmd.strip())

            time.sleep(0.05)


def main():

    rclpy.init()

    node = ESPBridge()

    rclpy.spin(node)

    rclpy.shutdown()


if __name__ == '__main__':
    main()
