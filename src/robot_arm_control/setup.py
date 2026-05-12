from setuptools import setup
setup(
    name='robot_arm_control',
    version='0.0.1',
    packages=['robot_arm_control'],
    install_requires=['setuptools'],
    entry_points={
        'console_scripts': [
            'trajectory_planning = robot_arm_control.trajectory_planning:main',
        ],
    },
)
