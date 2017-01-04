.phony: clean tests

PYTHON      ?= python
PIP         ?= pip
TOX         ?= tox

SUBDIRS = .tox greet.egg-info dist .eggs

all: build test

test:
	${PIP} install -r test-requirements.txt
	${TOX} --skip-missing-interpreters

build:
	${PYTHON} setup.py build

clean: cleanpythonbuild cleanreports cleanextrafolders

cleanpythonbuild:
	@echo "Cleaning Python build folders"
	${PYTHON} setup.py clean --all

cleanreports:
	@echo "cleaning xml reports"
	rm -f *.xml

cleanextrafolders:
	@echo "cleaning extra folders"
	rm -rf $(SUBDIRS)

install: build
	${PYTHON} setup.py install

uninstall:
	${PIP} uninstall greet -y