Core dependencies
=================

The following table lists the core dependencies that are managed by the
organization and are usually updated when this project, the organizational
POM is released.

These dependencies generally use the organizational pom that is at least
one level behind the current one.

| Artifact                                               | Type         | Purpose                                                                      |
|--------------------------------------------------------|--------------|------------------------------------------------------------------------------|
| [net.trajano.maven.skins:twentyfourteen-maven-skin][2] | maven skin   | Generated site look and feel to match www.trajano.net                        |
| [net.trajano:coding-standards][3]                      | resource jar | Defines the coding standards used by the organization projects.              |
| [net.trajano.mojo:cleanpom-maven-plugin][5]            | maven plugin | Cleans up pom.xml and other XML files for a project.                         |
| [net.trajano.mojo:m2e-codestyle-maven-plugin][6]       | maven plugin | Configures the code style settings for Eclipse M2E                           |

[2]: http://site.trajano.net/twentyfourteen-maven-skin/
[3]: http://site.trajano.net/coding-standards/
[5]: http://site.trajano.net/cleanpom-maven-plugin/
[6]: http://site.trajano.net/m2e-codestyle-maven-plugin/

