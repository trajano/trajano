Trajano
=======

[Trajano][] is an IT Consulting/Contracting firm specialising in end-to-end
enterprise architecture, systems design and development.  It is founded by
[Archimedes Trajano][1].
	
About this project
------------------

This project provides the [Trajano][] organizational POM.  In this project, 
the overall reports and core plug-ins are specified along with branding details.

The organizational POM version numbering scheme is a single numeric number. This
is similar to the way [Apache][] does their POM versioning.

Services used
-------------

In terms of managing projects and artifacts, the following tools are used:

* [GitHub][] is used for [issue tracking][] as they already provide the
  [source repository][].

* [Drone][] is used for [continuous integration][] builds as it integrates
  well with [GitHub][].

The following on-line services are used for [distribution management][].
	
* [GitHub Pages][] is used to host the project site via [Wagon Git][].

* [Sonatype OSS][] is used as the repository as it provides a freely available 
  Nexus server and provides [detailed instructions for promoting up to Maven Central][2].
	
The services above should not be used in a real enterprise as they are public 
and the extensions used are not guaranteed to be developed regularly.  They 
are used only as a means to an end to allow for public publishing.
	
An actual enterprise should be using proper hosting for the services within 
its own walls.


[Trajano]: http://www.trajano.net/
[Distribution Management]: ./distribution-management.html
[Issue Tracking]: ./issue-tracking.html
[Source Repository]: ./source-repository.html
[Continuous Integration]: ./integration.html
[Apache]: http://apache.org/
[Drone]: http://drone.io/
[GitHub]: http://github.com/
[GitHub Pages]: http://pages.github.com/
[Wagon Git]: http://site.trajano.net/wagon-git/
[Sonatype OSS]: http://oss.sonatype.org/
[1]: http://www.linkedin.com/in/trajano
[2]: http://docs.sonatype.org/display/Repository/Sonatype+OSS+Maven+Repository+Usage+Guide
