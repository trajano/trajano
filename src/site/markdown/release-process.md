Release process
===============

The release process for OSS projects by the organization is done through [Travis][] and the [Maven Release Plugin][maven-release-plugin].

The release process is triggered by executing:

    mvn release:prepare && mvn release:clean

To use the default values for the tags and versions use `--batch-mode` as follows:

    mvn --batch-mode release:prepare && mvn release:clean

`mvn release:prepare` will do some preflight verifications, commit `pom.xml` changes and push a new tag to the repository.  [Travis][]  will get triggeredand the `mvn release:perform` on the [Travis][] container.

Since [Travis][] is performing the actual release, `mvn release:clean` will remove the intermediate release files.

[Travis]: https://travis-ci.org/
[maven-release-plugin]: http://maven.apache.org/maven-release/maven-release-plugin
