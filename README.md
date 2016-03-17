# EasyNSDateHandler

[![CI Status](http://img.shields.io/travis/Minh Hoang/EasyNSDateHandler.svg?style=flat)](https://travis-ci.org/Minh Hoang/EasyNSDateHandler)
[![Version](https://img.shields.io/cocoapods/v/EasyNSDateHandler.svg?style=flat)](http://cocoapods.org/pods/EasyNSDateHandler)
[![License](https://img.shields.io/cocoapods/l/EasyNSDateHandler.svg?style=flat)](http://cocoapods.org/pods/EasyNSDateHandler)
[![Platform](https://img.shields.io/cocoapods/p/EasyNSDateHandler.svg?style=flat)](http://cocoapods.org/pods/EasyNSDateHandler)

## What is this for ?

This library is created for avoiding boilerplate code when dealing with NSDate creation and output.
When creating a NSDate from day month year, you have to declare a NSCalendar and NSDateComponent, when you'd like to get a NSString from a NSDate, you have to create a NSDateFormatter. This will save you time from creating those one-time-used objects.

## Requirements

iOS ~> 6.0 or later

## Installation

EasyNSDateHandler is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod "EasyNSDateHandler"
```

Or just copy files from Pod/Classes into your project.

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
