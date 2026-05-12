import rclpy
from rclpy.node import Node
from moveit.planning import MoveItPy, MultiPipelinePlanRequestParameters
from geometry_msgs.msg import PoseStamped
import time

def main():
    rclpy.init()

    # MoveItPy مع تحديد الـ pipeline صراحة
    robot = MoveItPy(node_name="trajectory_planner")
    arm = robot.get_planning_component("arm")

    print("✅ MoveIt جاهز!")

    # استنى شوية عشان الـ planning scene يتحمّل
    time.sleep(2.0)

    # ==============================
    # Pose 1
    # ==============================
    pose1 = PoseStamped()
    pose1.header.frame_id = "base_link"
    pose1.pose.position.x = 0.3
    pose1.pose.position.y = 0.0
    pose1.pose.position.z = 0.3
    pose1.pose.orientation.w = 1.0

    arm.set_start_state_to_current_state()
    arm.set_goal_state(pose_stamped_msg=pose1, pose_link="gripper")

    plan1 = arm.plan()
    if plan1:
        print("✅ Plan 1 نجح — بيتحرك...")
        robot.execute(plan1.trajectory, blocking=True, controllers=[])
    else:
        print("❌ Plan 1 فشل")

    time.sleep(1.0)

    # ==============================
    # Pose 2
    # ==============================
    pose2 = PoseStamped()
    pose2.header.frame_id = "base_link"
    pose2.pose.position.x = 0.2
    pose2.pose.position.y = 0.2
    pose2.pose.position.z = 0.4
    pose2.pose.orientation.w = 1.0

    arm.set_start_state_to_current_state()
    arm.set_goal_state(pose_stamped_msg=pose2, pose_link="gripper")

    plan2 = arm.plan()
    if plan2:
        print("✅ Plan 2 نجح — بيتحرك...")
        robot.execute(plan2.trajectory, blocking=True, controllers=[])
    else:
        print("❌ Plan 2 فشل")

    time.sleep(1.0)

    # ==============================
    # ارجع لـ home
    # ==============================
    arm.set_start_state_to_current_state()
    arm.set_goal_state(configuration_name="home")
    plan3 = arm.plan()
    if plan3:
        print("✅ رجع home")
        robot.execute(plan3.trajectory, blocking=True, controllers=[])

    print("🎉 خلص!")
    rclpy.shutdown()

if __name__ == '__main__':
    main()
