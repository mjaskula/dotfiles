# JAVA

eval "$(jenv init -)"
#jenv enable-plugin export  # not sure if this is needed in every shell

if [[ `/usr/libexec/java_home 2>/dev/null` ]]
then
  export JAVA_HOME=`/usr/libexec/java_home`
fi

export MAVEN_OPTS="-XX:+CMSClassUnloadingEnabled -Xmn512M -Xmx2048M"
export GRADLE_OPTS="-Xmx1024M -Dorg.gradle.daemon=true"
