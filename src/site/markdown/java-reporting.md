Java project reporting configuration
====================================

As of version 14 of the organizational POM.  A large number of [plugins][1]
have been configured to reduce the configuration needed for other projects
when doing reporting.

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
