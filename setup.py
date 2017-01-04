from setuptools import setup

setup(
    name='greet',
    version='0.0.1',
    packages=['greet'],
    setup_requires=['pytest-runner'],
    # cmdclass = {'test': PyTest},
    test_suite="tests",
    scripts=["scripts/greetme.py"],
    entry_points={"console_scripts": ["greetme = greetme:main"]},
    zip_safe=False,
    url='',
    license='',
    author='Henry Borchers',
    author_email='henryborchers@yahoo.com',
    description='Simple test greeting'
)
