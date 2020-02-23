
# Proportional size

**Proportional size** goals is to make available sizes proportional to the device used, helping to create a layout more similar to prototypes. Written in Swift.

## Features

- [x] Change values according device width size
- [x] Set base device width size
- [ ] Visual example
- [ ] Tests
- [ ] Enum with width devices

## Usage

To define the width size of the prototype created by the designer, we can proceed like this:

```swift
//AppDelegate.swift

import UIKit
import ProportionalSize

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

	func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
		ProportionalSize.defaultWidthSize = 375.0
		return true
	}
	...
}
```

--

Then use the values with the extension '.proportional', will be adjusted according to the device used.

Sample: 

```swift
import ProportionalSize

// iPhone SE
1000.0.proportional /// Should return this value -> 853,3333333333

// iPhone 8
1000.0.proportional /// Should return this value -> 1000

// iPhone 11 Pro Max
1000.0.proportional /// Should return this value -> 1104
```
--

**🔥IMPORTANT🔥** don't forget to set your defaultWidthSize to adjust according device.

## Installation

### Proportional size

[CocoaPods](https://cocoapods.org) is a dependency manager for Cocoa projects. For usage and installation instructions, visit their website. To integrate Alamofire into your Xcode project using CocoaPods, specify it in your `Podfile`:

```ruby
pod 'ProportionalSize'
```

### Manually

If you prefer not to use any of the aforementioned dependency managers, you can integrate Proportional size into your project manually.

-   Just copy  `ProportionalSize/Classes/Proportional.swift`  into your project.
Path: ProportionalSize/Classes/[Proportional.swift](https://github.com/Vitorsilveira31/Proportional-size/blob/master/ProportionalSize/Classes/Proportional.swift "Proportional.swift")

## Credits

**Proportional size** is owned and maintained by the Vitor Silveira. You can follow me on Twitter at [@vitusilveira31](https://twitter.com/vitusilveira31) for project updates and releases.

This library was inspired by [Layout Helper](https://github.com/tryWabbit/Layout-Helper) for iOS and [SDP](https://github.com/tryWabbit/Layout-Helper) for Android.

## License

**Proportional size** is released under the MIT license.
