Trajano
=======

[![Build Status](https://travis-ci.org/trajano/trajano.svg?branch=master)](https://travis-ci.org/trajano/trajano) [![Quality Gate](https://sonarcloud.io/api/badges/gate?key=net.trajano:trajano)](https://sonarcloud.io/dashboard?id=net.trajano:trajano)

[Trajano][] is an IT Consulting/Contracting delivery organization specialising
in end-to-end enterprise architecture, systems design and development.  It is
founded by [Archimedes Trajano][1] [[LinkedIn][LinkedIn]]
[[StackOverflow][StackOverflow]].

### About this project

This project provides the [Trajano][] organizational POM.  In this project, the [services used][2], [overall reports][4], [core plugins][3] and [managed plugin versions][5] are specified along with branding details.  In a way this codifies the [Standards Information Base][2] for the organization.

### Coding standards

[Coding standards][6] are referenced on this plugin to define the rulesets that
are used by [Checkstyle][], [PMD][PMD], [FindBugs][FindBugs] and
[m2e codestyle][m2e] Maven plugins.  The activation of these plugins are done
on individual projects and not on this level.

### Versioning

The organizational POM version numbering scheme is a single numeric number. This
is similar to the way [Apache][] does their POM versioning.  The only exception
is when there is a build issue, but the core plugin versions and configurations
have not changed and it had already been released to central.


[Trajano]: https://trajano.net/
[Apache]: http://apache.org/
[LinkedIn]: https://www.linkedin.com/in/trajano
[StackOverflow]: https://stackoverflow.com/users/242042/archimedes-trajano
[1]: https://trajano.net/
[2]: ./sib.html
[3]: ./plugins.html
[4]: ./project-reports.html
[5]: ./plugin-management.html
[6]: https://site.trajano.net/coding-standards
[PMD]: https://maven.apache.org/plugins/maven-pmd-plugin/
[Checkstyle]: https://maven.apache.org/plugins/maven-checkstyle-plugin/
[FindBugs]: https://gleclaire.github.io/findbugs-maven-plugin/
[m2e]: https://site.trajano.net/m2e-codestyle-maven-plugin/
