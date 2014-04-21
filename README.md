Trajano
=======

[Trajano][] is an IT Consulting/Contracting firm specialising in end-to-end
enterprise architecture, systems design and development.  It is founded by
[Archimedes Trajano][1].
	
About this project
------------------

This project provides the [Trajano][] organizational POM.  In this project, 
the [services used][2], [overall reports][4] and [core plug-ins][3] are 
specified along with branding details.

The organizational POM version numbering scheme is a single numeric number. This
is similar to the way [Apache][] does their POM versioning.

Using SNAPSHOT releases
-----------------------

The [Sonatype OSS][] is used to host the SNAPSHOT releases.  To use the 
SNAPSHOT releases, add the following `<profile>` in the `.m2/settings.xml`
file.

    <profile>
        <id>trajano</id>
        <activation>
            <activeByDefault>true</activeByDefault>
        </activation>
        <repositories>
            <repository>
                <id>sonatype</id>
                <name>Sonatype Maven OSS Repository</name>
                <releases>
                    <enabled>true</enabled>
                </releases>
                <snapshots>
                    <enabled>true</enabled>
                </snapshots>
                <url>https://oss.sonatype.org/content/groups/public</url>
            </repository>
        </repositories>
    </profile>

[Trajano]: http://www.trajano.net/
[Apache]: http://apache.org/
[Sonatype OSS]: http://oss.sonatype.org/
[1]: http://www.linkedin.com/in/trajano
[2]: ./services.html
[3]: ./plugins.html
[4]: ./project-reports.html
