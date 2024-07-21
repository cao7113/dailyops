#!/bin/sh

cat arg0-on-build arg1-on-build env1-on-build
echo "current ENV1=$ENV1" 

# /app # ./run-me.sh 
# test ARG0=
# test ARG1=default-arg1-in-dockerfile
# test ENV1=default-env1-in-dockerfile
# current ENV1=env1-test-in-run-cmd