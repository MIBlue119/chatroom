#!/bin/bash --login
# This script is for activating the FRONTEND DIRECTLY
FRONTEND_DIR=$1
cd $FRONTEND_DIR
echo "$(pwd)"
yarn run start
