import rclpy
from moveit.planning import MoveItPy
from geometry_msgs.msg import PoseStamped
import os
import yaml
import tempfile

def main():
    rclpy.init()

    # اعمل config file مؤقت
    config = {
        "moveit_py": {
            "ros__parameters": {
                "planning_pipelines": {
                    "pipeline_names": ["ompl"]
                },
                "ompl": {
                    "planning_plugin": "ompl_interface/OMPLPlanner",
                    "request_adapters": [
                        "default_planning_request_adapters/ResolveConstraintFrames",
                        "default_planning_request_adapters/ValidateWorkspaceBounds",
                        "default_planning_request_adapters/CheckStartStateBounds",
                        "default_planning_request_adapters/CheckStartStateCollision"
                    ],
                    "response_adapters": [
                        "default_planning_response_adapters/AddTimeOptimalParameterization",
                        "default_planning_response_adapters/ValidateSolution",
                        "default_planning_response_adapters/DisplayMotionPath"
                    ]
                }
            }
        }
    }

    with tempfile.NamedTemporaryFile(mode='w', suffix='.yaml', delete=False) as f:
        yaml.dump(config, f)
        config_path = f.name

    robot = MoveItPy(
        node_name="moveit_py",
        launch_params_filepaths=[config_path]
    )
    
    arm = robot.get_planning_component("arm")
    print("✅ MoveIt جاهز!")

    pose1 = PoseStamped()
    pose1.header.frame_id = "base_link"
    pose1.pose.position.x = 0.2
    pose1.pose.position.y = 0.0
    pose1.pose.position.z = 0.3
    pose1.pose.orientation.w = 1.0

    arm.set_start_state_to_current_state()
    arm.set_goal_state(pose_stamped_msg=pose1, pose_link="gripper")

    plan = arm.plan()
    if plan:
        print("✅ Plan نجح!")
        robot.execute(plan.trajectory, controllers=[])
    else:
        print("❌ Plan فشل")

    os.unlink(config_path)
    rclpy.shutdown()

if __name__ == '__main__':
    main()
