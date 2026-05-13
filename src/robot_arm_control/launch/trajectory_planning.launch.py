from launch import LaunchDescription
from launch_ros.actions import Node
from moveit_configs_utils import MoveItConfigsBuilder

def generate_launch_description():
    moveit_config = (
        MoveItConfigsBuilder("URDF", package_name="robot_arm_moveit_config")
        .robot_description()
        .robot_description_semantic()
        .robot_description_kinematics()
        .joint_limits()
        .trajectory_execution()
        .planning_pipelines(
            default_planning_pipeline="ompl",
            pipelines=["ompl"]
        )
        .to_moveit_configs()
    )

    trajectory_node = Node(
        package="robot_arm_control",
        executable="trajectory_planning",
        output="screen",
        parameters=[moveit_config.to_dict()],
    )

    return LaunchDescription([trajectory_node])
