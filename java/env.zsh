# JAVA
#export JAVA_HOME=/Library/Java/JavaVirtualMachines/1.7.0.jdk/Contents/Home

if [[ `/usr/libexec/java_home 2>/dev/null` ]]
then
  export JAVA_HOME=`/usr/libexec/java_home -v 1.8`
fi

export MAVEN_OPTS="-XX:+CMSClassUnloadingEnabled -Xmn512M -Xmx2048M"
export GRADLE_OPTS="-Xmx1024M -Dorg.gradle.daemon=true"
