# OnlineShop iOS app

![Swift 5.1](https://img.shields.io/badge/Swift-5.1-orange.svg)
![Xcode 11](https://img.shields.io/badge/Xcode-11-orange.svg?style=flat)
![SwiftUI Support](https://img.shields.io/badge/SwiftUI-iOS-orange?style=flat)
![CI Status](https://github.com/gtroshin/OnlineShop/workflows/Swift/badge.svg)

## Requirements
- iOS 13.2+
- Xcode 11.2+
- Brew: `/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"`
- Make: `brew install make`

## Run Tests
Before running tests via command line, check `destination` in [Makefile](Makefile) and that runtime and simulator are available on your Mac by running `instruments -s devices`.

Command line:

    make test

Or simply open Xcode and run tests via Test Navigator.

Pro tip: Use `Clone or download` button in GitHub Web and select `Open in Xcode`.

## CI
- Configuration [file for GitHub Actions](.github/workflows/swift.yml).
- CI web [view is here](https://github.com/gtroshin/OnlineShop/actions).
