#!/bin/bash

# Clean the project
flutter clean

# Get dependencies
flutter pub get

# Run build_runner to generate Freezed files
flutter pub run build_runner build --delete-conflicting-outputs 