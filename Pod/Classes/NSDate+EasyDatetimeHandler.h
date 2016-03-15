//
//  NSDate+EasyDatetimeHandler.h
//  TestDatetimeConverter
//
//  Created by minhnh on 3/15/16.
//  Copyright © 2016 minhnh. All rights reserved.
//

#import <Foundation/Foundation.h>

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

@interface NSDate (EasyDatetimeHandler)

/*!
 * @brief Create a NSDate from given year, month and day
 */
+ (NSDate *)dateWithYear:(NSInteger)year month:(NSInteger)month day:(NSInteger)day;

/*!
 * @brief Generate a NSString output from NSDate object with given format and date/month/year separator symbol
 */
- (NSString *)toStringWithDateFormat:(NSDateToStringFormatOrderByComponent)format dateComponentSeparator:(NSString *)separator;

@end
