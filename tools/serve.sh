#!/bin/ksh
# Copyright 2010, Truveris Inc. All Rights Reserved.
#
# This will serve Truffle endlessly for development purpose.
#

if [ ! -e "setup.py" ]; then
	echo "Please run this script from the base folder."
	exit
fi

BASE=$HOME/truveris/portal/pyport/virtualenv
PASTER=$BASE/bin/paster

. $BASE/bin/activate

while :; do
	paster serve --reload development.ini $*;
	# --log-file test.log;
	# python -m cProfile $PASTER serve --reload development.ini;
	echo -n "--- Server has died, press enter to restart ---"
	if ! read X; then
		exit
	fi
done
