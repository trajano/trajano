Services used
=============

In terms of managing projects and artifacts, the following tools are used:

* [GitHub][] is used for [issue tracking][] as they already provide the
  [source repository][].  However, [Redmine][] with [Redmine Backlogs][] is 
  used internally within the organization.

* [Drone][] is used for [continuous integration][] builds as it integrates
  well with [GitHub][].  However, [Jenkins] is used internally within the
  organization.

The following on-line services are used for [distribution management][].
	
* [GitHub Pages][] is used to host the project site via [Wagon Git][].

* [Sonatype OSS][] is used as the repository as it provides a freely available 
  Nexus server and provides [detailed instructions for promoting up to 
  Maven Central][2].

The services above should not be used in a real enterprise as they are public 
and the extensions used are not guaranteed to be developed regularly.  They 
are used only as a means to an end to allow for public publishing.
	
An actual enterprise should be using proper hosting for the services within 
its own walls.

[Drone]: http://drone.io/
[GitHub]: http://github.com/
[GitHub Pages]: http://pages.github.com/
[Jenkins]: http://jenkins-ci.org/
[Wagon Git]: http://site.trajano.net/wagon-git/
[Sonatype OSS]: http://oss.sonatype.org/
[Redmine]: http://www.redmine.org/
[Redmine Backlogs]: http://www.redminebacklogs.net/
[Distribution Management]: ./distribution-management.html
[Issue Tracking]: ./issue-tracking.html
[Source Repository]: ./source-repository.html
[2]: http://central.sonatype.org/pages/ossrh-guide.html
