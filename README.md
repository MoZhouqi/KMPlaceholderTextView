KMPlaceholderTextView
============

A UITextView subclass that adds support for multiline placeholder written in Swift.

![PlaceholderTextView](https://raw.githubusercontent.com/MoZhouqi/KMPlaceholderTextView/master/Screenshots/preview.gif)

## Usage

You can set the value of the `placeholder` property just like using UITextField.

### Interface Builder

![Storyboard](https://raw.githubusercontent.com/MoZhouqi/KMPlaceholderTextView/master/Screenshots/storyboard-setting.gif)

1. Drag a UITextView object onto the canvas.
2. In the Identity inspector, set the Custom Class name to `KMPlaceholderTextView`.
3. In the Attributes inspector, you can change the value of the `placeholder` property directly.

### Code

```swift
let placeholderTextView = KMPlaceholderTextView(frame: view.bounds)
placeholderTextView.placeholder = "What's on your mind?"
view.addSubview(placeholderTextView)
```
## Installation

### CocoaPods

You can install the latest release version of CocoaPods with the following command:

```bash
$ gem install cocoapods
```

Simply add the following line to your Podfile:

```ruby
platform :ios, '8.0' 
use_frameworks!

pod 'KMPlaceholderTextView', '~> 1.3.0' 
```

Then, run the following command:

```bash
$ pod install
```

### Carthage

[Carthage](https://github.com/Carthage/Carthage) is a decentralized dependency manager that automates the process of adding frameworks to your Cocoa application.

You can install Carthage with [Homebrew](http://brew.sh/) using the following command:

```bash
$ brew update
$ brew install carthage
```

To integrate KMPlaceholderTextView into your Xcode project using Carthage, specify it in your `Cartfile`:

```ogdl
github "MoZhouqi/KMPlaceholderTextView" >= 1.3
```

## Requirements

- iOS 7.0+
- Xcode 8.0+

## License

KMPlaceholderTextView is released under the MIT license. See LICENSE for details.
