rm -rf build

xcodebuild \
  clean \
  build \
  -sdk iphoneos \
  -project MinimumFramework.xcodeproj \
  -scheme MinimumFramework \
  -destination 'generic/platform=iOS' \
  -derivedDataPath build/iphoneos \
  -configuration Release



xcodebuild \
  clean \
  build \
  -sdk iphonesimulator \
  -project MinimumFramework.xcodeproj \
  -scheme MinimumFramework \
  -destination 'generic/platform=iOS Simulator' \
  -derivedDataPath build/iphonesimulator \
  -configuration Release


xcodebuild -create-xcframework \
  -library build/iphonesimulator/Build/Products/Release-iphonesimulator/libMinimumFramework.a \
  -headers build/iphonesimulator/Build/Products/Release-iphonesimulator/usr/local/include \
  -library build/iphoneos/Build/Products/Release-iphoneos/libMinimumFramework.a \
  -headers build/iphoneos/Build/Products/Release-iphoneos/usr/local/include \
  -output build/MinimumFramework.xcframework