PYTHON      ?= python
PIP         ?= pip
TOX         ?= tox

all: build test

test:
	${PIP} install -r test-requirements.txt
	${TOX} --skip-missing-interpreters

build:
	${PYTHON} setup.py build

clean:
	${PYTHON} setup.py clean --all
	rm


install: build
	${PYTHON} setup.py install

uninstall:
	${PIP} uninstall greet -y