from setuptools import setup, find_packages

setup(
    name='SapFlower',
    version='1.0',
    packages=find_packages(),
    install_requires=[
        'numpy',
        'PyQt5',
        'matplotlib'
    ],
    entry_points={
        'console_scripts': [
            'sapflower = sapflower.main:main'
        ]
    },
    author='Jiaxin Wang',
    author_email='coolwjx@foxmail.com',
    description='A complete Windows executable application that can be used for sap flow data previewing, pre-processing, gap-filling, post-processing, and analysis.',
    license='MIT',
    keywords='matplotlib PyQt5 data-visualization',
    url='https://github.com/JiaxinWang123/SapFlower',
)
