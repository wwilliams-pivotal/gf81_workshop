. ../../setenvironment.sh
gfsh -e "connect --locator=$HOSTNAME[10334]" -e "stop server --name=server2" -e "shutdown --include-locators=true --time-out=60" -e "exit"
