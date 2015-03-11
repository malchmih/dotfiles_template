resolvers += Resolver.sonatypeRepo("snapshots")

resolvers += "sonatype-releases" at "https://oss.sonatype.org/content/repositories/releases/"

addSbtPlugin("org.ensime" % "ensime-sbt" % "0.1.5")

addSbtPlugin("com.timushev.sbt" % "sbt-updates" % "0.1.8")

addSbtPlugin("org.scalastyle" %% "scalastyle-sbt-plugin" % "0.6.0")

addSbtPlugin("net.virtual-void" % "sbt-dependency-graph" % "0.7.4")
