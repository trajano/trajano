Java project reporting configuration
====================================

As of version 12 of the organizational POM.  A large number of [plugins][1]
have been configured to reduce the configuration needed for other projects
when doing reporting.

Java project `pom.xml` files would have the following section added to provide
the expected reports for each project.  It is ordered in that API documentation
comes first followed by quality checks and finishing with the cross reference.

    <reporting>
        <plugins>
            <plugin>
                <artifactId>maven-javadoc-plugin</artifactId>
            </plugin>
            <plugin>
                <artifactId>maven-checkstyle-plugin</artifactId>
            </plugin>
            <plugin>
                <artifactId>maven-pmd-plugin</artifactId>
            </plugin>
            <plugin>
                <groupId>org.codehaus.mojo</groupId>
                <artifactId>findbugs-maven-plugin</artifactId>
            </plugin>
            <plugin>
                <artifactId>maven-surefire-report-plugin</artifactId>
            </plugin>
            <plugin>
                <groupId>org.jacoco</groupId>
                <artifactId>jacoco-maven-plugin</artifactId>
            </plugin>
            <plugin>
                <artifactId>maven-jxr-plugin</artifactId>
            </plugin>
        </plugins>
    </reporting>

At present there is no automated "upgrade" capability to synchronize `pom.xml`
files.  Therefore, this needs to be done manually.

### Maven plugin projects

For Maven plugin projects, add the following plugin first. 

    <plugin>
        <artifactId>maven-plugin-plugin</artifactId>
    </plugin>

This will enable the plugin reports which can be added to `site.xml` using the
following

    <menu name="Overview">
        <item href="index.html" name="About" />
        <item href="plugin-info.html" name="Plugin Documentation" />
    </menu>


[1]: ./plugin-management.html
