Using SNAPSHOT releases
=======================

[Maven Central][] does not host `SNAPSHOT` releases, instead  the
[Sonatype OSS][] is used to host the `SNAPSHOT` releases.  `SNAPSHOT` releases
provide early access to new versions of artifacts released by the organization,
but may be unstable to use in production code.

The `SNAPSHOT` releases repository is defined in `pom.xml` as of version 14,
so there is no need to add make changes to the `.m2/settings.xml` file.

[Sonatype OSS]: http://oss.sonatype.org/
[Maven Central]: http://search.maven.org/
