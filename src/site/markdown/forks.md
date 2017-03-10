Forking OSS projects
====================

There are times when forks of open source projects may occur in order to accomodate specific requirements or to fix bugs.  Should the upstream project get updated and satisfy what is needed by the [Trajano][] fork, then usage of the [Trajano][] fork will be deprecrated.

### Packaging and distribution

For forks, the `groupId` is changed to something within the `net.trajano` package group.

The `parent` will be changed to the current version of `net.trajano:trajano` which will configure most of the distribution and plugins.

The version number is incremented by adding `.1` at the end of the existing version string. (e.g. `4.2.5` becomes `4.2.5.1`) and will be incremented accordingly.

The [project specific properties](./properties.html) `repo.id` property will be set and the following sections are removed from the [Trajano][] fork to pull the values from `net.trajano:trajano`:

* `ciManagement`
* `distributionManagement`
* `scm`

### Continuous Integration

Continuous integration will be performed using [Travis](https://travis-ci.org) and would utilize [.travis.yml](./travis-yml.html) as needed.

### Coding standards

The upstream coding standards must be followed.  To prevent changes due to formatting, the `m2e-codestyle-maven-plugin` and `cleanpom-maven-plugin` are disabled by adding the following to the `pom.xml`

     <plugin>
       <groupId>net.trajano.mojo</groupId>
       <artifactId>cleanpom-maven-plugin</artifactId>
       <executions>
         <execution>
           <phase>none</phase>
         </execution>
       </executions>
     </plugin>
     <plugin>
       <groupId>net.trajano.mojo</groupId>
       <artifactId>m2e-codestyle-maven-plugin</artifactId>
       <executions>
         <execution>
           <phase>none</phase>
         </execution>
       </executions>
     </plugin>

[Trajano]: https://trajano.net
