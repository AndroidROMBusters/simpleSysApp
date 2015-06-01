#!/bin/sh

TAG_NAMES=`find . -name '*.java' | grep -v 'Test' | grep -v '\\$\\$' | perl -p -e 's:^(.*)/(\w+).java:$2:g' | sort -u | xargs`
for tag in $TAG_NAMES
do
    echo "Setting log level to VERBOSE for $tag"
    adb shell setprop log.tag.$tag VERBOSE
done

