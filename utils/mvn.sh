#!/bin/bash

case "$OSTYPE" in
  darwin*)
    java_homes=( $(echo /Library/Java/JavaVirtualMachines/jdk1.8.0_???.jdk/Contents/Home) )
    export JAVA_HOME="${java_homes[${#java_homes[@]}-1]}"
    unset java_homes
    ;;
esac

mvn "$@"
