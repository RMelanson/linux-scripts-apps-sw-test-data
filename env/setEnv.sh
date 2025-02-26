#!/bin/bash

# SW TEST DATA CONFIGURATION
bootstrap="swTestDataBootstrap.sh"

gitRepo="linux-scripts-apps-sw-test-data.git"

#SET UP INSTALLATION DIRECTORY
pkg=SW_TEST_DATA
scriptType="testData"
parentDir="/tmp/scripts/$scriptType/"
installDir="$parentDir/$pkg"

export SW_TEST_DATA=$SW_HOME/input/swdata
export SW_PROD_DATA=$SW_HOME/input/swdata

pkgOwner=ec2-user

echo Setting External Args
echo These Arguments Overwrite Default Argument Settings
for arg in "$@"; do
  echo setArgs EXECUTING: export $arg
  export $arg
done
