## FPSLabel
A tiny library provides a draggble label that display FPS.

### Installation
```pod
pod 'FPSLabel'
```

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

### Reference
* [YYKit](https://github.com/ibireme/YYKit) 
* [iOS Project](https://github.com/NJHu/iOSProject.git).
