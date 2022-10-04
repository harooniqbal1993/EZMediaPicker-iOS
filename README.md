# EZMediaPicker-iOS

[![CI Status](https://img.shields.io/travis/harooniqbl1993/EZMediaPicker-iOS.svg?style=flat)](https://travis-ci.org/harooniqbl1993/EZMediaPicker-iOS)
[![Version](https://img.shields.io/cocoapods/v/EZMediaPicker-iOS.svg?style=flat)](https://cocoapods.org/pods/EZMediaPicker-iOS)
[![License](https://img.shields.io/cocoapods/l/EZMediaPicker-iOS.svg?style=flat)](https://cocoapods.org/pods/EZMediaPicker-iOS)
[![Platform](https://img.shields.io/cocoapods/p/EZMediaPicker-iOS.svg?style=flat)](https://cocoapods.org/pods/EZMediaPicker-iOS)

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Requirements

## Installation

EZMediaPicker-iOS is available through [CocoaPods](https://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'EZMediaPicker-iOS', :git => 'https://github.com/harooniqbal1993/EZMediaPicker-iOS.git'
```
## Usage

For picking image:
```ruby
import EZMediaPicker_iOS

...

mediaPicker?.pickImage(viewController: self, mediaType: .gallery) { [weak self] image, videoURL, error in
    if let error = error {
        print("error: ", error)
        return
    }
    self?.attachedImage.image = image
}
```

For video:
```ruby
import EZMediaPicker_iOS

...

mediaPicker?.pickImage(viewController: self, mediaType: .video) { [weak self] image, videoURL, error in
    if let error = error {
        print("error: ", error)
        return
    }
    print(videoURL)
}
```

Opening camera:
```ruby
import EZMediaPicker_iOS

...

mediaPicker?.pickImage(viewController: self, mediaType: .camera) { [weak self] image, videoURL, error in
    if let error = error {
        print("error: ", error)
        return
    }
    // if image
    self?.attachedImage.image = image
    
    // if video
    print(videoURL)
}
```

## Author

harooniqbl1993, harooniqbal1993@gmail.com

## License

EZMediaPicker-iOS is available under the MIT license. See the LICENSE file for more info.
