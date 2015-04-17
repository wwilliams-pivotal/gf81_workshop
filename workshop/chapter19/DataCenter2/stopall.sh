. ../../setenvironment.sh
gfsh -e "connect --locator=$HOSTNAME[10335]" -e "stop server --name=server4" -e "shutdown --include-locators=true --time-out=60" -e "exit"
