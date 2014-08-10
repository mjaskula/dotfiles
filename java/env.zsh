# JAVA
#export JAVA_HOME=/Library/Java/JavaVirtualMachines/1.7.0.jdk/Contents/Home
export JAVA_HOME=`/usr/libexec/java_home -v 1.8`

export MAVEN_OPTS="-XX:+CMSClassUnloadingEnabled -Xmn512M -Xmx2048M -XX:MaxPermSize=512M"
export GRADLE_OPTS="-Xmx1024M -XX:MaxPermSize=1024M -Dorg.gradle.daemon=true"