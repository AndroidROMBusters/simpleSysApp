#!/bin/sh

./gradlew clean asDeb && find . -type f -regex ".*-debug-[0-9].*\.apk" -exec adb install -r {} \; && ./log.sh


