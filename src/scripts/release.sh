#!/bin/bash -e -x
logmsg=$(git log --format=%B -n 1 HEAD)
if [[ "$logmsg" == "[maven-release-plugin] prepare for next development iteration" ]]
then
  git checkout origin/master -B master
  git merge --no-ff release
  git status
  git log --color --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit
  mvn scm:checkin -Dmessage="merge release to master"
  git log --color --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit
elif [[ "$logmsg" != "[maven-release-plugin]"* ]]
then
  git checkout release
  git status
  git log --color --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit
  mvn release:prepare
  mvn release:perform
fi
