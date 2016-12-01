#!/bin/bash
# via: https://docs.travis-ci.com/user/common-build-problems/#Mac%3A-Code-Signing-Errors

KEYCHAIN=$TRAVIS_BUILD_DIR/travis.keychain
echo "Setting up keychain at $KEYCHAIN"
security create-keychain -p travis $KEYCHAIN
# Make the keychain the default so identities are found
security default-keychain -s $KEYCHAIN
# Unlock the keychain
security unlock-keychain -p travis $KEYCHAIN
# Set keychain locking timeout to 3600 seconds
security set-keychain-settings -t 3600 -u $KEYCHAIN