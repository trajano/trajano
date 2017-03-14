Core dependencies
=================

The following table lists the core dependencies that are managed by the
organization and are usually updated when this project, the organizational
POM, is released.

These dependencies generally use the organizational POM that is at least
one level behind the current one.

| Artifact                                               | Type         | Purpose                                                                      |
|--------------------------------------------------------|--------------|------------------------------------------------------------------------------|
| [net.trajano.maven.skins:twentyfourteen-maven-skin][2] | maven skin   | Generated site look and feel to match [Archie's Blog](https://trajano.net/blog/) |
| [net.trajano:coding-standards][3]                      | resource jar | Defines the coding standards used by the organization projects.              |
| [net.trajano.mojo:cleanpom-maven-plugin][5]            | maven plugin | Cleans up pom.xml and other XML files for a project.                         |
| [net.trajano.mojo:m2e-codestyle-maven-plugin][6]       | maven plugin | Configures the code style settings for Eclipse M2E.                          |
| [net.trajano.apiviz:apiviz][apiviz]                    | jar | Generates te UML diagrams in JavaDoc.  Fork of an existing project to fix an [issue with JDK 1.8.1.](https://github.com/grahamedgecombe/apiviz/pull/2)  |

As of version 14, [net.trajano.wagon:wagon-git][7] is no longer a core depenendency as the Maven generated sites are now published using SFTP which is provided by [wagon-ssh](http://maven.apache.org/wagon/wagon-providers/wagon-ssh/).

[2]: https://site.trajano.net/twentyfourteen-maven-skin/
[3]: https://site.trajano.net/coding-standards/
[5]: https://site.trajano.net/cleanpom-maven-plugin/
[6]: https://site.trajano.net/m2e-codestyle-maven-plugin/
[7]: https://site.trajano.net/wagon-git/
[apiviz]: https://site.trajano.net/apiviz/
