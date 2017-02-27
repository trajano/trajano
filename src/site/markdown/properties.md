Project specific properties
==========================

The following properties are set on this project but are expected to be changed in projects that inherit from this POM.

* `module.id` defines a unique name for the project and acts as the GitHub project ID.  It is the `artifactId` of the root of a multimodule project or the project `artifactId` of a single module project.

* `jdk.version` specifies which version of the JDK to use by many other plugins.  This is defaulted to `1.6` but may be changed.
