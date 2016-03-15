//
//  NSDate+EasyDatetimeHandler.m
//  TestDatetimeConverter
//
//  Created by minhnh on 3/15/16.
//  Copyright © 2016 minhnh. All rights reserved.
//

#import "NSDate+EasyDatetimeHandler.h"

@implementation NSDate (EasyDatetimeHandler)

+ (NSDate *)dateWithYear:(NSInteger)year month:(NSInteger)month day:(NSInteger)day {
    NSDate *date;
    
    NSCalendar *calendar = [NSCalendar currentCalendar];
    NSDateComponents *components = [[NSDateComponents alloc] init];

    components.year = year;
    components.month = month;
    components.day = day;
    
    date = [calendar dateFromComponents:components];
    
    return date;
}

- (NSString *)toStringWithDateFormat:(NSDateToStringFormatOrderByComponent)format dateComponentSeparator:(NSString *)separator {
    NSString *returnedString;
    
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    switch (format) {
        case NSDateToStringFormatOrderByYearMonthDate: {
            formatter.dateFormat = [NSString stringWithFormat:@"yyyy%@MM%@dd", separator, separator];
            break;
        }
        case NSDateToStringFormatOrderByYearDateMonth: {
            formatter.dateFormat = [NSString stringWithFormat:@"yyyy%@dd%@MM", separator, separator];
            break;
        }
        case NSDateToStringFormatOrderByMonthDateYear: {
            formatter.dateFormat = [NSString stringWithFormat:@"MM%@dd%@yyyy", separator, separator];
            break;
        }
        case NSDateToStringFormatOrderByDateMonthYear: {
            formatter.dateFormat = [NSString stringWithFormat:@"dd%@MM%@yyyy", separator, separator];
            break;
        }
        case NSDateToStringFormatOrderByYearMonth: {
            formatter.dateFormat = [NSString stringWithFormat:@"yyyy%@MM", separator];
            break;
        }
        case NSDateToStringFormatOrderByMonthYear: {
            formatter.dateFormat = [NSString stringWithFormat:@"MM%@yyyy", separator];
            break;
        }
        case NSDateToStringFormatOrderByDateMonth: {
            formatter.dateFormat = [NSString stringWithFormat:@"dd%@MM", separator];
            break;
        }
        case NSDateToStringFormatOrderByMonthDate: {
            formatter.dateFormat = [NSString stringWithFormat:@"MM%@dd", separator];
            break;
        }
    }
    
    returnedString = [formatter stringFromDate:self];
    
    return returnedString;
}

@end
