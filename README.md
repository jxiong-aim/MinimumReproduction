This project consists of a minimum swift framework and an Objective-C iOS app including it. Both targets for iOS 15.

# Steps to reproduce

build xcframework
```
cd MinimumFramework
./build_xcframework.sh
```

Drag the `MinimumFramework.xcframework` into the `Frameworks, Libraries, and Embedded Content` of target `MinimumApp`

Build for iOS 15

You should see a
```
Undefined symbol: __swift_FORCE_LOAD_$_swiftCompatibility56
```

Xcode version 15.4