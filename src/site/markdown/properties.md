Project specific properties
===========================

The following properties are set on this project but are expected to be changed in projects that inherit from this POM.

* `repo.id` the GitHub repository name which is the `artifactId` of the root of a multimodule project or the project `artifactId` of a single module project.

* `jdk.version` specifies which version of the JDK to use by many other plugins.  This is defaulted to `1.8` but may be changed.

In addition, the following fragments must be present on any top level projects that inherit from the this POM to ensure that paths are correct.

```
<url>https://site.trajano.net/${repo.id}/</url>
<scm>
  <connection>scm:git:https://github.com/trajano/${repo.id}.git</connection>
  <developerConnection>scm:git:https://github.com/trajano/${repo.id}.git</developerConnection>
  <tag>HEAD</tag>
  <url>https://github.com/trajano/${repo.id}</url>
</scm>
<issueManagement>
  <system>GitHub</system>
  <url>https://github.com/trajano/${repo.id}/issues</url>
</issueManagement>
<ciManagement>
  <system>Travis</system>
  <url>https://travis-ci.org/trajano/${repo.id}</url>
</ciManagement>
<distributionManagement>
  <site>
    <id>trajano-site</id>
    <name>Trajano Maven Sites</name>
    <url>sftp://site.trajano.net:6022/s/${repo.id}/</url>
  </site>
</distributionManagement>
```
