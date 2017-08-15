# MGK3DButton

[![Travis](https://img.shields.io/travis/rust-lang/rust.svg)]()
[![Version](https://img.shields.io/cocoapods/v/MGK3DButton.svg?style=flat)](http://cocoapods.org/pods/MGK3DButton)
[![License](https://img.shields.io/cocoapods/l/MGK3DButton.svg?style=flat)](http://cocoapods.org/pods/MGK3DButton)
[![Platform](https://img.shields.io/cocoapods/p/MGK3DButton.svg?style=flat)](http://cocoapods.org/pods/MGK3DButton)
[![Swift](https://img.shields.io/badge/Swift-3.1-blue.svg)](https://img.shields.io/badge/Swift-3.1-blue.svg)


## ScreenShot

![screenshot](https://github.com/mohammadghk/MGK3DButton/blob/0.1.0/Example/Screenshot.jpg)
## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

also try example [Here](https://appetize.io/app/ffg5ab8bgb9wtdatjkh5gu8jnw)
   
## Requirements
Xcode 8.3.2
Swift 3.1

## Installation

MGK3DButton is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'MGK3DButton', :git => 'https://github.com/mohammadghk/MGK3DButton'
```

*Manual Installation* is available by copying MGK3DButton.swift file and adding it into your project.

## Usage

create an instance of `MGK3DButton` or drag and drop a `UIButton` in story board and set it's custom class to `MGK3DButton`
then you can simply edit it in IB using IBInspectable variables `customColor` for button's background color and `customShadowColor` for shadow color and highlighted fill color, you can also set button's text color in IB using `titleColor` 

to setup programatically in your code use : `initWith(color : UIColor , shadow : UIColor)`

you can also use predefined colors , create an outlet of the button in you code and in your `viewDidLoad()` simply write:
`myButton.color = .green`
other options are `.orange , .navyBlue , .beige , .white` . the default value is `.white`

if you want to use your custom predefiened color palettes , use manual installation and then edit `color` enum and replace default values :)

## Author

Mohammad Ghasemi Kakroudi, mohammadghk@gmail.com

## License

MGK3DButton is available under the MIT license. See the LICENSE file for more info.
