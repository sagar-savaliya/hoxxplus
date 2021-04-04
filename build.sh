#!/usr/bin/env bash
# set environment variable
# shellcheck disable=SC2034
rm .env
# PRODUCTION, DEVELOPMENT, STAGING
echo "BUILD_TYPE=$1" >> .env

# create build
react-native bundle --platform android --dev false --entry-file index.js --bundle-output android/app/src/main/assets/index.android.bundle --assets-dest android/app/src/main/res/
# shellcheck disable=SC2164
cd android
rm -rf app/src/main/res/raw
rm -rf app/src/main/res/drawable-xhdpi/*
rm -rf app/src/main/res/drawable-xxhdpi/*
rm -rf app/src/main/res/drawable-mdpi/*
rm -rf app/src/main/res/drawable-hdpi/*
rm -rf app/src/main/res/drawable-xxxhdpi/*
./gradlew assembleRelease
