# SpeechBubbleView

[![CI Status](https://img.shields.io/travis/eunjin3786/SpeechBubbleView.svg?style=flat)](https://travis-ci.org/eunjin3786/SpeechBubbleView)
[![Version](https://img.shields.io/cocoapods/v/SpeechBubbleView.svg?style=flat)](https://cocoapods.org/pods/SpeechBubbleView)
[![License](https://img.shields.io/cocoapods/l/SpeechBubbleView.svg?style=flat)](https://cocoapods.org/pods/SpeechBubbleView)
[![Platform](https://img.shields.io/cocoapods/p/SpeechBubbleView.svg?style=flat)](https://cocoapods.org/pods/SpeechBubbleView)

## Usage
### Create Programmatically

```swift
let speechBubble = SpeechBubbleView(frame: CGRect(x: 200, y: 200, width: 200, height: 200))
speechBubble.speechBubbleColor = .yellow
speechBubble.lineColor = .blue
speechBubble.lineWidth = 3
speechBubble.cornerRadius = 3

speechBubble.triangleType = .right
speechBubble.triangleSpacing = 10
speechBubble.triangleWidth = 10
speechBubble.triangleHeight = 10
```

### Create in Storyboard/XIB



<img width="265" alt="스크린샷 2019-10-25 오후 8 29 35" src="https://user-images.githubusercontent.com/9502063/67568089-2a4e2500-f766-11e9-9517-1507cae64372.png">



<img width="588" alt="스크린샷 2019-10-25 오후 8 29 03" src="https://user-images.githubusercontent.com/9502063/67568051-173b5500-f766-11e9-8772-f5ae6c1ca6aa.png">



## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Requirements

## Installation

### Cocoapods
SpeechBubbleView is available through [CocoaPods](https://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'SpeechBubbleView'
```

### Swift Package Manager
SpeechBubbleView is available through Swift Package Manager.

## Author

eunjin3786, eunjin3786@naver.com

## License

SpeechBubbleView is available under the MIT license. See the LICENSE file for more info.
