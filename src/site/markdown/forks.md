Forking OSS projects
===================

There are times when forks of open source projects may occur in order to accomodate specific requirements or to fix bugs.

For forks, the `groupId` is changed to something within the `net.trajano` package group along with changing of the parent POM to use the organizational POM.

To reduce the number of changes due to formatting,   `m2e-codestyle-maven-plugin` is not enabled and `cleanpom-maven-plugin` is disabled by adding the following to the `pom.xml`

     <plugin>
       <groupId>net.trajano.mojo</groupId>
       <artifactId>cleanpom-maven-plugin</artifactId>
       <executions>
         <execution>
           <phase>none</phase>
         </execution>
       </executions>
     </plugin>

An `index.html` file needs to be generated as well.  To do this create a `src/site/markdown/index.md.vm` file with the following content to make it read the data in `README.md` (or the appropriate equivalent).

    $FileUtils.fileRead("${project.build.directory}/../README.md")
