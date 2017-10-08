Travis configuration
====================

This is the annotated version of the [.travis.yml](https://github.com/trajano/trajano/blob/master/.travis.yml) file.  More detailed information on [how to integrate Travis, SonarQube and GitHub](https://trajano.net/2016/11/integrating-travis-sonarqube/) is available in [trajano.net](https://trajano.net/).

### Branches
Travis is configured to build pushes and pull requests.  However, only `master` and the tags done by the [release process][] which are defined by the regex pattern should be built when pushed.

The pattern would change for other projects.

````
branches:
  only:
  - master
  - /^trajano-[\d\.]+$/
````

### Travis environment configuration

Use Java with Oracle JDK8.

````
language: java
jdk:
- oraclejdk8
````

Use container based builds as it has [many benefits](https://docs.travis-ci.com/user/migrating-from-legacy/#Why-migrate-to-container-based-infrastructure%3F).

````
sudo: false
````

Cache downloaded repository files from Sonar and Maven Central.

````
cache:
  directories:
  - "$HOME/.m2/repository"
  - "$HOME/.sonar/cache"
````

Add additional packages

* The `graphviz` package is installed so JavaDoc generation  would be able to use `dot`.

````
addons:
  apt:
    packages:
    - graphviz
````

Configure SonarCloud addon to  reduce the amount of coding needed in the `.travis.yml`.  It needs an encrypted `token`.

````
  sonarcloud:
    token:
      secure: ....
````

The keys and tokens are encrypted and stored as part of the `.travis.yml` file and  can only be used by the repository and are customized per project.

````
env:
  global:
  - secure: ...
````

The tokens are created as follows:

````
travis encrypt <SonarCloud token> --add addons.sonarcloud.token
travis encrypt SONAR_GITHUB_TOKEN=<GitHub token used by SonarCloud addon> --add
````

The deployment key files are from a tar file that is encrypted using `travis encrypt-file`

````
before_install:
- openssl aes-256-cbc -K $encrypted_65553d4eaa33_key -iv $encrypted_65553d4eaa33_iv
  -in deploy-keys.tar.enc -out deploy-keys.tar -d
````

### The build process

The deployment key files to `$HOME` and fix the permissions and load all the dependencies used into the local Maven repository.

````
install:
- tar xf deploy-keys.tar -C $HOME && chmod go-rwx -R $HOME/.m2 $HOME/.ssh
- mvn dependency:go-offline
````

Clean before the build

````
before_script:
- mvn clean
````

Perform the build using the `verify` target so the the cached `.m2/repository` folder will not need to be rebuilt followed by the site generation and SonarQube checks.

````
script:
- mvn verify site sonar:sonar
````

### Deployments

SNAPSHOT builds which are on the `master` branch:

````
deploy:
- provider: script
  skip_cleanup: true
  script: mvn deploy site-deploy
  on:
    branch: master
````

Release builds which are tagged by the [release process][] require a `release.properties` file that contains the SCM information due to [MRELEASE-839](https://issues.apache.org/jira/browse/MRELEASE-839):

````
- provider: script
  skip_cleanup: true
  script: printf 'scm.tag=%1s\nscm.url=scm:git:https://git@github.com/%2s.git' "${TRAVIS_TAG}"
    "${TRAVIS_REPO_SLUG}" > release.properties && mvn release:perform
  on:
    tags: true
````

[release process]: ./release-process.html
