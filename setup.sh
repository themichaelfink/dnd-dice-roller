#!/bin/sh

# Check if Dart is installed
if ! command -v dart &> /dev/null
then
    echo "Dart SDK could not be found. Please install Dart SDK first."
    exit
fi

# Activate webdev
dart pub global activate webdev

# Serve the web application
webdev serve
