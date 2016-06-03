# license-issue
Demonstrates an issue with the licence-maven-plugin and SQL files.

To reproduce the issue, run a simple Maven build from the root of the project.

```shell
mvn clean install
```

In the output, the following exception will appear if the bug is present.

```
[WARNING] skip failed file : Could not process file C:\Work\Code\license-issue\license-issue\src\main\docker\postgres\example.sql (file:///C:/Work/Code/license-issue/license-issue/src/main/docker/postgres/example.sql) for reason String index out of range: -1
java.io.IOException: Could not process file C:\Work\Code\license-issue\license-issue\src\main\docker\postgres\example.sql (file:///C:/Work/Code/license-issue/license-issue/src/main/docker/postgres/example.sql) for reason String index out of range: -1
        at org.codehaus.mojo.license.AbstractFileHeaderMojo.processFile(AbstractFileHeaderMojo.java:922)
        at org.codehaus.mojo.license.AbstractFileHeaderMojo.processFile(AbstractFileHeaderMojo.java:826)
        at org.codehaus.mojo.license.AbstractFileHeaderMojo.processCommentStyle(AbstractFileHeaderMojo.java:800)
        at org.codehaus.mojo.license.AbstractFileHeaderMojo.doAction(AbstractFileHeaderMojo.java:581)
        at org.codehaus.mojo.license.AbstractLicenseMojo.execute(AbstractLicenseMojo.java:207)
        at org.apache.maven.plugin.DefaultBuildPluginManager.executeMojo(DefaultBuildPluginManager.java:134)
        at org.apache.maven.lifecycle.internal.MojoExecutor.execute(MojoExecutor.java:207)
        at org.apache.maven.lifecycle.internal.MojoExecutor.execute(MojoExecutor.java:153)
        at org.apache.maven.lifecycle.internal.MojoExecutor.execute(MojoExecutor.java:145)
        at org.apache.maven.lifecycle.internal.LifecycleModuleBuilder.buildProject(LifecycleModuleBuilder.java:116)
        at org.apache.maven.lifecycle.internal.LifecycleModuleBuilder.buildProject(LifecycleModuleBuilder.java:80)
        at org.apache.maven.lifecycle.internal.builder.singlethreaded.SingleThreadedBuilder.build(SingleThreadedBuilder.java:51)
        at org.apache.maven.lifecycle.internal.LifecycleStarter.execute(LifecycleStarter.java:128)
        at org.apache.maven.DefaultMaven.doExecute(DefaultMaven.java:307)
        at org.apache.maven.DefaultMaven.doExecute(DefaultMaven.java:193)
        at org.apache.maven.DefaultMaven.execute(DefaultMaven.java:106)
        at org.apache.maven.cli.MavenCli.execute(MavenCli.java:863)
        at org.apache.maven.cli.MavenCli.doMain(MavenCli.java:288)
        at org.apache.maven.cli.MavenCli.main(MavenCli.java:199)
        at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)
        at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:62)
        at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)
        at java.lang.reflect.Method.invoke(Method.java:497)
        at org.codehaus.plexus.classworlds.launcher.Launcher.launchEnhanced(Launcher.java:289)
        at org.codehaus.plexus.classworlds.launcher.Launcher.launch(Launcher.java:229)
        at org.codehaus.plexus.classworlds.launcher.Launcher.mainWithExitCode(Launcher.java:415)
        at org.codehaus.plexus.classworlds.launcher.Launcher.main(Launcher.java:356) 
```

The fix for this bug is being tracked at https://github.com/mojohaus/license-maven-plugin/pull/28
