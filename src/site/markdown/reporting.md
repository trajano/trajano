Project reporting configuration
===============================

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

### Linkcheck exclusions

* [`plugin-management.html`](./plugin-management.html) is excluded because some plugins that this project would reference may point to invalid URLs namely `sonar-maven-plugin` and `taglist-maven-plugin`.
* `../**` is excluded because the references to them are not valid because the target site is not necessarily in the same folder.
* ![success](images/icon_success_sml.gif) `images/icon_success_sml.gif` and ![warning](images/icon_warning_sml.gif) `images/icon_warning_sml.gif` generate false negatives.
* http://search.maven.org/ generates a `404` when a `HEAD` request is passed.
* https://i.trajano.net/ this is used by the Trajano DevOps intranet site which is not publically accessible.
* https://www.linkedin.com/ generates a `999` when a `HEAD` request is passed.
* `401 Unauthorized` HTTP errors codes are accepted.

[1]: ./plugin-management.html
