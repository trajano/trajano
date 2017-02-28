Code Quality
============

Although there are [coding standards][1] put in place which include
[CheckStyle][2], [PMD][3], and [FindBugs][4] rules, these rules are not
used with their respective Maven plugins and the [M2E code quality plugin][6].
**The code quality is validated using [SonarQube][5] instead of Maven or M2E.**

The main reason for this choice is *purely technical* for the most part.

* There were inconsistency and difficulty of getting Maven to generate the
  site correctly with the proper rules loaded and the exceptions of ignoring 
  generated sources getting applied correctly.
* It has issues running on M2E environment and the exclusion configurations
  do not always load up correctly.
* In certain instances, we get build loops on M2E.
* Using [SonarQube][5] allows the enterprise to manage the quality rules
  separately from the project.

For the non-technical reason, the Maven core plugins had changed their defect
reporting policy making it difficult to report and have defects with their
plugins addressed.  Although this is relatively the same policy that
[SonarQube][5] also has, there are less technical problems to deal with on
[SonarQube][5].  The enterprise policy may change this later, however as of
this time [SonarQube][5] is chosen.

### Issues with the approach

The problem with this approach is the lack of local and build-time testing 
as it now requires access to a [SonarQube][5] server to perform the tests
rather than the IDE.

However, the reality of enterprise projects is technical debt is a norm and
keeping that debt at zero may cause the business to miss the market.

In addition, the most of the bad practices are mitigated by:

* using [m2e-codestyle-maven-plugin][7] which will configure the IDE to 
  perform the necessary coding cleanups.
* The Eclipse JDT already provides several [errors/warnings][8] for marking
  potential coding problems on the IDE.

Thereby reducing the need to have the extra analysis being performed by the
IDE itself.

[1]: https://site.trajano.net/coding-standards/
[2]: https://site.trajano.net/coding-standards/checkstyle.html
[3]: https://site.trajano.net/coding-standards/pmd.html
[4]: https://site.trajano.net/coding-standards/findbugs.html
[5]: http://www.sonarqube.org/
[6]: https://github.com/m2e-code-quality/m2e-code-quality
[7]: https://site.trajano.net/m2e-codestyle-maven-plugin/
[8]: http://help.eclipse.org/neon/topic/org.eclipse.jdt.doc.user/reference/preferences/java/compiler/ref-preferences-errors-warnings.htm