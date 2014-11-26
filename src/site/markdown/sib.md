Standards Information Base (SIB)
================================

The [Standards Information Base or SIB][Standards Information Base] is a
database of facts and guidance about information systems standards.  It
details the components used to implement a [technical reference model][].
To keep things simple, the SIB is used to list the technologies being used
by the organization for the purpose of delivery.

Since it is a delivery organization, versions are not specific to allow
flexibility to move to newer versions without going through governance.
Enterprises normally would define specifically supported versions.

### Project and artifact management

In terms of managing projects and artifacts, the following tools are used:

* [GitHub][] is used for [issue tracking][] as they already provide the
  [source repository][].  However, [Redmine][] with [Redmine Backlogs][] is 
  used internally within the organization.

* [Jenkins][] is used for [continuous integration][] builds,  Some public
  projects are also configured to use [Drone][] as a secondary
  [continuous integration][] build tool.
  
* [SonarQube][] is also used as a quality management platform internally. 

The following on-line services are used for [distribution management][].
	
* [GitHub Pages][] is used to host the project site via [Wagon Git][].

* [Sonatype OSS][] is used as the repository as it provides a freely available 
  Nexus server and provides [detailed instructions for promoting up to 
  Maven Central][2].

### Authentication and authorization

There is only one way to access organization resources from the Internet
and that is through an SSL Client Side Certificates.  These certificates
must be validated by a trusted certificate authority and the e-mail must
be registered with the internal directory.

For security reasons, client certificates are not generated nor stored by the
organization.

### Note

The services above should not be used in a real enterprise as they are public 
and the extensions used are not guaranteed to be developed regularly.  They 
are used only as a means to an end to allow for public publishing.
	
An actual enterprise should be using proper hosting for the services within 
its own walls.

[Standards Information Base]: http://www.opengroup.org/public/arch/p3/sib/sib_intro.htm
[Technical Reference Model]: http://pubs.opengroup.org/architecture/togaf8-doc/arch/chap19.html
[Drone]: http://drone.io/
[GitHub]: http://github.com/
[GitHub Pages]: http://pages.github.com/
[Jenkins]: http://jenkins-ci.org/
[Wagon Git]: http://site.trajano.net/wagon-git/
[Sonatype OSS]: http://oss.sonatype.org/
[SonarQube]: http://www.sonarqube.org/
[Redmine]: http://www.redmine.org/
[Redmine Backlogs]: http://www.redminebacklogs.net/
[Distribution Management]: ./distribution-management.html
[Continuous Integration]: ./integration.html
[Issue Tracking]: ./issue-tracking.html
[Source Repository]: ./source-repository.html
[2]: http://central.sonatype.org/pages/ossrh-guide.html
