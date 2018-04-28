## ! DO NOT MANUALLY INVOKE THIS setup.py, USE CATKIN INSTEAD

from distutils.core import setup
from catkin_pkg.python_setup import generate_distutils_setup

# fetch values from package.xml
setup_args = generate_distutils_setup(
    name="curpp",
    description="Code for interfacing with Moveit! and Graspit! grasps using pick and place",
    packages=['curpp'],
    package_dir={'': 'src'})

setup(**setup_args)