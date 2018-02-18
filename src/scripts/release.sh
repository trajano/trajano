#!/bin/bash -e -x
logmsg=$(git log --format=%B -n 1 HEAD)
if [[ "$logmsg" != "[maven-release-plugin]"* ]]
then
  git status
  git log --color --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit
fi
