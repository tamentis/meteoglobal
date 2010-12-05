#!/bin/ksh
#
# This will serve MeteoGlobal endlessly for development purpose.
#

if [ ! -e "setup.py" ]; then
	echo "Please run this script from the base folder."
	exit
fi

. ../virtualenv/bin/activate

while :; do
	paster serve --reload development.ini $*;
	# --log-file test.log;
	# python -m cProfile $PASTER serve --reload development.ini;
	echo -n "--- Server has died, press enter to restart ---"
	if ! read X; then
		exit
	fi
done
