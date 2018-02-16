Release process
===============

The release process for OSS projects by the organization is done through [Travis][] and the [Maven Release Plugin][maven-release-plugin].

The release process is triggered by executing the following that would push to the release branch that would trigger a [Travis][] build.

    git push origin origin/master:release

This will use the version currently set on the snapshot and increment the version accordingly.  If a different version is required then the [versions-maven-plugin][] is used as follows:

    mvn versions:set -DnewVersion=<newsnapshotversion> versions:commit
    git commit -a -m "Set version to ..."
    git push

[Travis]: https://travis-ci.org/
[maven-release-plugin]: http://maven.apache.org/maven-release/maven-release-plugin
[versions-maven-plugin]: http://www.mojohaus.org/versions-maven-plugin/
