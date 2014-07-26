#!/bin/sh

if [ $# = 0 ]; then
  echo "Usage: `basename $0` NEW_VERSION"
  exit 1
fi

mvn -Dtycho.mode=maven -DnewVersion="$1" tycho-versions:set-version
