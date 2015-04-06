#!/bin/bash

export GEMFIRE_HOME=/usr/local/Cellar/gemfire/8.1.0/libexec
export GEMFIRE=$GEMFIRE_HOME

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
