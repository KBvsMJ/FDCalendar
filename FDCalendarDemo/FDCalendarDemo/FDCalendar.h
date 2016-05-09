//
//  FDCalendar.h
//  FDCalendarDemo
//
//  Created by fergusding on 15/8/20.
//  Copyright (c) 2015年 fergusding. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef void(^FDCalendarCompleteHandler) (NSString * selectedDate);

@interface FDCalendar : UIView
{
    FDCalendarCompleteHandler calendarCompleteHandler;
}
/**
 *  设置日期参数以及获取当前选中的日期
 *
 *  @param date            当前日期
 *  @param completeHandler 回调参数
 *
 */
- (instancetype)initWithCurrentDate:(NSDate *)date withSelectDateCompleteHandler:(FDCalendarCompleteHandler)completeHandler;

@end
