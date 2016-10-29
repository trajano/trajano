Standards Information Base (SIB)
================================

The [Standards Information Base or SIB][Standards Information Base] is a
database of facts and guidance about information systems standards.  It
details the components used to implement a [technical reference model][].
To keep things simple, the SIB is used to list the technologies being used
by the organization for the purpose of delivery.

Since it is a delivery organization, versions are not specified here to allow
flexibility to move to newer versions without going through governance.
Enterprises normally would define specifically supported versions.

### Project and development management

There are two main development methodologies being exercised by the organization.

* [Kanban methodology][Kanban] is used to manage *organizational level* tasks.
* [Scrum methodology][Scrum] is used to manage *per project level* tasks.

### Organizational level tooling

The following tools are part of the *organizational level* tooling.

* [Trac][] is used *organizational level* issue tracking and document sharing.  
* [Jenkins][] is for [continuous integration][] builds for __all__ projects.
* [SonarQube][] is a platform for [quality management][3] used to track *organizational level* product quality metrics and rules for __all__ projects.

The following cloud services are used for projects as well.

* [Visual Studio Team Services][].  This tool is used for *project level* project management, issue tracking and version control (using Git).  This is used only for __private__ projects.   
* [Slack][] is used a the organization team chat tool.

### Open source tooling

There are a [number of projects][4] that are contributed to the community by the organization mostly under [EPL-1.0][6].  Though they are built and deployed from within the confines of the organization, cloud service tooling is heavily used to allow access to the greater community.

* [GitHub][] is used for [issue tracking][] and the [source repository][].
* [Travis][] is used as a [continuous integration][] build tool to complement [Jenkins][].
* [SonarQube.com][] is used for [quality management][3], but because the rules cannot be configured the results on [SonarQube.com][] are ignored by the organization.
* [GitHub Pages][] is used to host the project site via [Wagon Git][] as part of [distribution management][Distribution Management].
* [Sonatype OSS][] is used as the repository as it provides a freely available Nexus server and provides [detailed instructions for promoting up to Maven Central][2].

### Authentication and authorization

There is only one way to access organization resources from the Internet
and that is through an SSL Client Side Certificates.  These certificates
must be validated by a trusted certificate authority and the e-mail must
be registered with the internal directory.

[Standards Information Base]: http://www.opengroup.org/public/arch/p3/sib/sib_intro.htm
[Technical Reference Model]: http://pubs.opengroup.org/architecture/togaf8-doc/arch/chap19.html
[GitHub]: http://github.com/
[GitHub Pages]: http://pages.github.com/
[Jenkins]: http://jenkins-ci.org/
[Wagon Git]: http://site.trajano.net/wagon-git/
[Sonatype OSS]: http://oss.sonatype.org/
[Travis]: https://travis-ci.org/
[SonarQube]: http://www.sonarqube.org/
[SonarQube.com]: https://www.sonarqube.com/
[Trac]: https://trac.edgewall.org/
[Distribution Management]: ./distribution-management.html
[Continuous Integration]: ./integration.html
[Issue Tracking]: ./issue-tracking.html
[Source Repository]: ./source-repository.html
[2]: http://central.sonatype.org/pages/ossrh-guide.html
[3]: ./code-quality.html
[4]: https://github.com/trajano?tab=repositories
[6]: ./license-choice.html
[Slack]: https://trajano.slack.com/
[Kanban]: https://www.agilealliance.org/glossary/kanban-board/
[Scrum]: http://scrummethodology.com/
[Visual Studio Team Services]: https://www.visualstudio.com/team-services/
