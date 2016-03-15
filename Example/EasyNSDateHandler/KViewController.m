//
//  KViewController.m
//  EasyNSDateHandler
//
//  Created by Minh Hoang on 03/15/2016.
//  Copyright (c) 2016 Minh Hoang. All rights reserved.
//

#import "KViewController.h"
#import "NSDate+EasyDatetimeHandler.h"

@interface KViewController ()

@end

@implementation KViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    NSDate *date = [NSDate dateWithYear:2016 month:3 day:15];
    NSLog(@"%@", [date toStringWithDateFormat:NSDateToStringFormatOrderByYearDateMonth dateComponentSeparator:@"🍥"]);
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
