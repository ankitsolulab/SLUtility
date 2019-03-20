# SLUtility

[![CI Status](https://img.shields.io/travis/ankitsolulab/SLUtility.svg?style=flat)](https://travis-ci.org/ankitsolulab/SLUtility)
[![Version](https://img.shields.io/cocoapods/v/SLUtility.svg?style=flat)](https://cocoapods.org/pods/SLUtility)
[![License](https://img.shields.io/cocoapods/l/SLUtility.svg?style=flat)](https://cocoapods.org/pods/SLUtility)
[![Platform](https://img.shields.io/cocoapods/p/SLUtility.svg?style=flat)](https://cocoapods.org/pods/SLUtility)


## Requirements

-  iOS 8.0 or later
-  Xcode 9.0 or later

## Installation

SLUtility is available through [CocoaPods](https://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'SLUtility'
```

## Features

1. String Functions -  Trim and URL validation.

## CODE - Referance


### SLString.swift - provided methods

````ruby
- func removeWhiteSpaceAndNewLine()
- func validateStringToURL()
- func isValidEmail()
````

### SLDateTimeAgo.swift
- This class will provide you date diffrence from any date to current date by x.. seconds, min, hours, days, months, years ago... 

### SLImagePickerButton.swift

- This class provide you image from image picker by UIImagePickerViewController .

## Example

```ruby
self.buttonImagePicker.pickImageFromPicker(isAllowEditingImage: true) { (imagePickerInfo) in

    guard let info = imagePickerInfo else {
        // Cancel image picker
        return
    }

    // Image selected successfully from image picker.
    if let image = info[self.buttonImagePicker.imagePicker.allowsEditing ? UIImagePickerController.InfoKey.editedImage : UIImagePickerController.InfoKey.originalImage] as? UIImage {
        self.buttonImagePicker.setBackgroundImage(image, for: .normal)
    }
}
```

## Author

ankitsolulab, ankit@solulab.com

## License

SLUtility is available under the MIT license. See the LICENSE file for more info.
