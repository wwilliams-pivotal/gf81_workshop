#!/bin/bash

# on MAC I installed via brew and have an alias pointing to the installation
# if installing manually and not using an alias, point to the directory
#export GEMFIRE=/Programs/pivotal/Pivotal_GemFire_810_b50625_Linux
export GEMFIRE=/usr/local/bin

export JAVA_HOME=$(/usr/libexec/java_home -v 1.8)

# Note: the above on OSX resolves to:
#export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_20.jdk/Contents/Home

export GF_JAVA=$JAVA_HOME/bin/java

# append JAVA_HOME to PATH if not already there
if [[ "${PATH}" = "${JAVA_HOME}" ]]; then
	export PATH=$PATH:$JAVA_HOME/bin
fi

# append GEMFIRE to PATH if not already there
if [[ "${PATH}" = "${GEMFIRE}" ]]; then
	export PATH=$PATH:$GEMFIRE/bin
fi
