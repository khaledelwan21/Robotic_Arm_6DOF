from setuptools import setup
import os
from glob import glob

setup(
    name='robot_arm_control',
    version='0.0.1',
    packages=['robot_arm_control'],
    install_requires=['setuptools'],
    data_files=[
        ('share/ament_index/resource_index/packages',
            ['resource/robot_arm_control']),
        ('share/robot_arm_control', ['package.xml']),
        (os.path.join('share', 'robot_arm_control', 'launch'),
            glob('launch/*.launch.py')),
    ],
    entry_points={
        'console_scripts': [
            'trajectory_planning = robot_arm_control.trajectory_planning:main',
        ],
    },
)
