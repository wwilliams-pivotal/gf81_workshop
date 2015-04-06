#!/bin/bash

export GEMFIRE=/Programs/pivotal/Pivotal_GemFire_810_b50625_Linux

export JAVA_HOME=$(/usr/libexec/java_home -v 1.8)

# Note: the above on OSX resolves to:
#export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_20.jdk/Contents/Home

export GF_JAVA=$JAVA_HOME/bin/java

# append JAVA_HOME to PATH if not already there
if [[ "${PATH}" =~ "${JAVA_HOME}" ]]; then
    echo "IT FOUND JAVA_HOME!!!"
else
   echo [[ $GEMFIRE =~ $PATH ]]
	echo "IT DID NOT FOUND JAVA_HOME!!!"
	export PATH=$PATH:$JAVA_HOME/bin
fi

# append GEMFIRE to PATH if not already there
if [[ "${PATH}" =~ "${GEMFIRE}" ]]; then
    echo "IT FOUND GEMFIRE!!!"
else
   echo [[ $GEMFIRE =~ $PATH ]]
       echo "IT DID NOT FOUND GEMFIRE!!!"
        export PATH=$PATH:$GEMFIRE/bin
fi
