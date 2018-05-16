# FPSLabel

[![Version](https://img.shields.io/cocoapods/v/FPSLabel.svg?style=flat)](http://cocoapods.org/pods/FPSLabel)
[![License](https://img.shields.io/cocoapods/l/FPSLabel.svg?style=flat)](http://cocoapods.org/pods/FPSLabel)
[![Platform](https://img.shields.io/cocoapods/p/FPSLabel.svg?style=flat)](http://cocoapods.org/pods/FPSLabel)

A tiny library provides a draggble label that display FPS.

### Installation
1. Run `pod repo update` to make CocoaPods aware of the latest available FPSLabel versions.
2. In your Podfile, add `pod 'FPSLabel'` to your main and test targets.
3. From the command line, run `pod install`.


### How to use
From `AppDelegate`, inside `didFinishLaunchingWithOptions`
* Objective-C: 
```objective-c 
#import <FPSLabel/FPSLabel.h>

[FPSLabel installOnWindow:self.window]; 
```
* Swift: 
```swift 
import FPSLabel

FPSLabel.install(on: self.window) 
```

### Demo
![Image](https://github.com/qkzhu/FPSLabel/blob/master/FPSLabelDemo/Images/demo.gif)


### Reference
* [YYKit](https://github.com/ibireme/YYKit) 
* [iOS Project](https://github.com/NJHu/iOSProject.git).
