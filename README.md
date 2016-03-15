# EasyNSDateHandler

[![CI Status](http://img.shields.io/travis/Minh Hoang/EasyNSDateHandler.svg?style=flat)](https://travis-ci.org/Minh Hoang/EasyNSDateHandler)
[![Version](https://img.shields.io/cocoapods/v/EasyNSDateHandler.svg?style=flat)](http://cocoapods.org/pods/EasyNSDateHandler)
[![License](https://img.shields.io/cocoapods/l/EasyNSDateHandler.svg?style=flat)](http://cocoapods.org/pods/EasyNSDateHandler)
[![Platform](https://img.shields.io/cocoapods/p/EasyNSDateHandler.svg?style=flat)](http://cocoapods.org/pods/EasyNSDateHandler)

## Usage

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Requirements

iOS ~> 6.0 or later

## Installation

EasyNSDateHandler is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod "EasyNSDateHandler"
```

## Usage

* Include NSDate+EasyDatetimeHandler.h header

* Create a NSDate from given year, month, date

```objective-c
+ (NSDate *)dateWithYear:(NSInteger)year month:(NSInteger)month day:(NSInteger)day;
```

* Get NSString output from NSDate object

```objective-c
- (NSString *)toStringWithDateFormat:(NSDateToStringFormatOrderByComponent)format dateComponentSeparator:(NSString *)separator;
```

The NSDateToStringFormatOrderByComponent enum as below
```objective-c
typedef NS_ENUM(NSInteger, NSDateToStringFormatOrderByComponent) {
NSDateToStringFormatOrderByYearMonthDate,
NSDateToStringFormatOrderByYearDateMonth,
NSDateToStringFormatOrderByMonthDateYear,
NSDateToStringFormatOrderByDateMonthYear,
NSDateToStringFormatOrderByYearMonth,
NSDateToStringFormatOrderByMonthYear,
NSDateToStringFormatOrderByDateMonth,
NSDateToStringFormatOrderByMonthDate
};
```

## Author

Kaopiz Software Co., Ltd.

## License

EasyNSDateHandler is available under the MIT license. See the LICENSE file for more info.
