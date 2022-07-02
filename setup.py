try:
    from setuptools import setup, find_packages
except ImportError:
    from distutils.core import setup, find_packages


setup(
    name="test",
    version="2.0",
    package_dir={"":"src"},
    packages=find_packages(where="src"),
)
