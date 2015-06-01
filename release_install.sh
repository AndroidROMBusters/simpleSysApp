#!/bin/sh

./gradlew clean aR && find . -type f -regex ".*-release-[0-9].*\.apk" -exec adb install -r {} \; && ./log.sh


