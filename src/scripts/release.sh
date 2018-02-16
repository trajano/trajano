#!/bin/bash -e -x
logmsg=$(git log --format=%B -n 1 HEAD)
case "$logmsg" in
  "[maven-release-plugin]*")
    ;;
  *)
    git checkout -B release
    git reset --hard HEAD
    mvn -B release:prepare
    #mvn release:perform
    git checkout -B master 
    mvn scm:checkin -Dmessage="merge from release"
    ;;
esac
