#!/bin/bash

INSTALL_DIR=${1:-$HOME}

echo 'Checking for $(which json)'
which json > /dev/null 2>&1
if [ $? -ne 0 ] ; then
	echo '$(which json) not found, installing from npm. May require global permissions.'
	npm install -g jsontool
	if [ $? -ne 0 ] ; then
		echo "Couldn't install jsontool from npm. Please run 'sudo npm install -g json', then rerun this installer."
		exit 1
	fi
else
	echo "jsontool found."
fi

echo "Installing into $INSTALL_DIR/.ghf"

# Create the install directory if it doesn't exist.
[ -d $INSTALL_DIR ] || mkdir -p $INSTALL_DIR

cd $INSTALL_DIR

# If it's already installed, update from origin.
if [ -d .ghf ] ; then
	cd .ghf
	echo "github-flow already installed, updating from origin."
	git pull origin master
else
	git clone https://github.com/github-flow/github-flow.git .ghf
fi

# Only modify the path if the newly installed ghf doesn't exist.
if [ ! $(echo $PATH | fgrep "$INSTALL_DIR/.ghf/bin") ] ; then
	echo "Adding .ghf to PATH."

	echo "PATH was '$PATH'"

	echo "PATH=$INSTALL_DIR/.ghf/bin:\$PATH" >> ~/.bashrc

	source ~/.bashrc

	echo "PATH is '$PATH'"

	echo "source ~/.bashrc to update path in the current shell."
fi
