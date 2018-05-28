[![Platform iOS](https://img.shields.io/cocoapods/p/LinearProgressView.svg?style=flat)](https://github.com/BiAtoms/LinearProgressView)
[![Cocoapods Compatible](https://img.shields.io/cocoapods/v/LinearProgressView.svg)](https://cocoapods.org/pods/LinearProgressView)
[![Carthage Compatible](https://img.shields.io/badge/carthage-compatible-brightgreen.svg?style=flat)](https://github.com/Carthage/Carthage)
[![License](https://img.shields.io/github/license/BiAtoms/LinearProgressView.svg)](https://github.com/BiAtoms/LinearProgressView/blob/master/LICENSE)

# LinearProgressView

A simple progress view for iOS
<div>
  <img src="Screenshots/demo.gif" height="400px"/>
  <img src="Screenshots/designer.png"/>
</div>

## Requirements

- iOS 8.0+
- Xcode 8.0+
- Swift 3.0+

## Installation

### CocoaPods

[CocoaPods](http://cocoapods.org) is a dependency manager for Cocoa projects. You can install it with the following command:

```bash
$ gem install cocoapods
```

To integrate LinearProgressView into your Xcode project using CocoaPods, specify it in your `Podfile`:

```ruby
source 'https://github.com/CocoaPods/Specs.git'
platform :ios, '8.0'
use_frameworks!

target '<Your Target Name>' do
    pod 'LinearProgressView', '~> 2.0'
end
```

Then, run the following command:

```bash
$ pod install
```

### Carthage

[Carthage](https://github.com/Carthage/Carthage) is a decentralized dependency manager that builds your dependencies and provides you with binary frameworks.

You can install Carthage with [Homebrew](http://brew.sh/) using the following command:

```bash
$ brew update
$ brew install carthage
```

To integrate LinearProgressView into your Xcode project using Carthage, specify it in your `Cartfile`:

```ogdl
github "BiAtoms/LinearProgressView" ~> 2.0
```

Run `carthage update` to build the framework and drag the built `LinearProgressView.framework` into your Xcode project.

### Manually

Just drag and drop the [Source/LinearProgressView.swift](https://github.com/BiAtoms/LinearProgressView/blob/master/Source/LinearProgressView.swift) file.

## Authors

* **Orkhan Alikhanov** - *Initial work* - [OrkhanAlikhanov](https://github.com/OrkhanAlikhanov)

See also the list of [contributors](https://github.com/BiAtoms/LinearProgressView/contributors) who participated in this project.

## License

This project is licensed under the MIT License - see the [LICENSE](https://github.com/BiAtoms/LinearProgressView/blob/master/LICENSE) file for details
