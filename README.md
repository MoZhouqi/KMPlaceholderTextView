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

*CocoaPods v0.36 or later required*

Simply add the following line to your Podfile:

```ruby
platform :ios, '8.0' 
use_frameworks!

pod 'KMPlaceholderTextView', '~> 0.1.1' 
```

Then, run the following command:

```bash
$ pod install
```

## Requirements

- iOS 7.0+
- Xcode 6.3

## License

KMPlaceholderTextView is released under the MIT license. See LICENSE for details.
