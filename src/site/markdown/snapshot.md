Using SNAPSHOT releases
=======================

[Maven Central][] does not host `SNAPSHOT` releases, instead  the
[Sonatype OSS][] is used to host the `SNAPSHOT` releases.  `SNAPSHOT` releases
provide early access to new versions of artifacts released by the organization,
but may be unstable to use in production code.

To use the `SNAPSHOT` releases, add the following `<profile>` in the
[`.m2/settings.xml`][settings] file.

    <profile>
        <id>sonatype-repository</id>
        <activation>
            <activeByDefault>true</activeByDefault>
        </activation>
        <pluginRepositories>
            <pluginRepository>
                <id>sonatype</id>
                <name>Sonatype Maven OSS Repository</name>
                <releases>
                    <enabled>true</enabled>
                </releases>
                <snapshots>
                    <enabled>true</enabled>
                </snapshots>
                <url>https://oss.sonatype.org/content/groups/public</url>
            </pluginRepository>
        </pluginRepositories>
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

Another way of using it is to pass the location of the settings file via the command line using the `-s` option that will allow SNAPSHOT releases of organizational POM to be used.  For example:

    mvn -s /path/to/snapshot-settings.xml

[Sonatype OSS]: http://oss.sonatype.org/
[Maven Central]: http://search.maven.org/
[settings]: ./settings.xml
