from moveit_configs_utils import MoveItConfigsBuilder
from moveit_configs_utils.launches import generate_move_group_launch
from launch import LaunchDescription
from launch_ros.actions import Node
from launch.actions import TimerAction
import os
from ament_index_python.packages import get_package_share_directory

def generate_launch_description():
    moveit_config = MoveItConfigsBuilder(
        "URDF", package_name="robot_arm_moveit_config"
    ).to_moveit_configs()

    config_dir = get_package_share_directory("robot_arm_moveit_config")
    params_file = os.path.join(config_dir, "config", "moveit_py_params.yaml")

    trajectory_node = Node(
        package="robot_arm_control",
        executable="trajectory_planning",
        name="trajectory_planner",
        output="screen",
        parameters=[
            moveit_config.robot_description,
            moveit_config.robot_description_semantic,
            moveit_config.robot_description_kinematics,
            moveit_config.joint_limits,
            params_file,
        ],
    )

    delayed_trajectory = TimerAction(
        period=6.0,
        actions=[trajectory_node]
    )

    return LaunchDescription([
        generate_move_group_launch(moveit_config),
        delayed_trajectory,
    ])
