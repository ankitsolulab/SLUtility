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

````ruby
//Remove white space character and new line character.
public func trim() -> String
{
    var str = self.trimmingCharacters(in: NSCharacterSet.whitespaces)
    str = str.trimmingCharacters(in: NSCharacterSet.newlines)
    return str
}
````

## Example

```ruby
var myString = "This is my car.  "
let myStringAfterOperation = myString.trim()
print(myStringAfterOperation) //This is my car.

```



## Author

ankitsolulab, ankit@solulab.com

## License

SLUtility is available under the MIT license. See the LICENSE file for more info.
