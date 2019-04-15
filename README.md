# topRepositories
Display top github repositories with infinite scroll.

## How To Get Started

Follow the instructions to install CocoaPods or skip these steps if you already have it installed before.
[CocoaPods](http://cocoapods.org) is a dependency manager which automates and simplifies the process of using 3rd-party libraries. You can install it with the following command:

```bash
$ gem install cocoapods
```

## Getting sources
Clone this repository or get a zip

## Installing dependencies
Navigate to root directory of this project.
Then, run the following command to install dependencies

```bash
$ pod install
```

## Open the workspace
Beware, it should be workspace file with .xcworkspace extension, not the .xcodeproj

## Build and run with Xcode
Minimal supported iOS is 10.0

This app is universal and applicable for both iPad and iPhone.

Portrait and landscape screen orientations are both supported.

## Tests
snapshots were taken using iPhone XR simulator

## Slather
run this command to execute slather

```bash
slather coverage -s --scheme TopRatedRepositories --workspace TopRatedRepositories.xcworkspace TopRatedRepositories.xcodeproj
```
