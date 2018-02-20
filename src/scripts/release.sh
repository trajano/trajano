#!/bin/bash -e -x
logmsg=$(git log --format=%B -n 1 HEAD)
if [[ "$logmsg" == "[maven-release-plugin] prepare for next development iteration" ]]
then
  git fetch origin master
  git checkout FETCH_HEAD -B master
  git merge --no-ff release
  git status
  git push https://${SONAR_GITHUB_TOKEN}@github.com/${TRAVIS_SLUG}.git master
  git log --color --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit
elif [[ "$logmsg" != "[maven-release-plugin]"* ]]
then
  git checkout release
  git status
  git log --color --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit
  mvn release:prepare
  mvn release:perform
fi
