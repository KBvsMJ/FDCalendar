//
//  ViewController.m
//  FDCalendarDemo
//
//  Created by fergusding on 15/8/20.
//  Copyright (c) 2015年 fergusding. All rights reserved.
//

#import "ViewController.h"
#import "FDCalendar.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [[UIApplication sharedApplication] setStatusBarStyle:UIStatusBarStyleLightContent];
    
    FDCalendar *calendar = [[FDCalendar alloc] initWithCurrentDate:[NSDate date]withSelectDateCompleteHandler:^(NSString *selectedDate) {
        
        NSLog(@"选择日期%@",selectedDate);
    }];
    CGRect frame = calendar.frame;
    frame.origin.y = 20;
    calendar.frame = frame;
    [self.view addSubview:calendar];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

@end
