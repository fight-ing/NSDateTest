//
//  LFViewController.m
//  NSDateTestDemo
//
//  Created by fei on 14-7-21.
//  Copyright (c) 2014年 self. All rights reserved.
//

#import "LFViewController.h"

@interface LFViewController ()

@end

@implementation LFViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    
    
    
//  取年 月 周 日
    NSCalendar *calender = [[NSCalendar alloc] initWithCalendarIdentifier:NSGregorianCalendar];
    NSDateComponents *comps = [calender components:NSYearCalendarUnit|NSMonthCalendarUnit|NSWeekCalendarUnit|NSDayCalendarUnit fromDate:[NSDate date]];
    NSLog(@"%@",comps);
    NSLog(@"year    :%ld",(long)[comps year]);
    NSLog(@"month   :%ld",(long)[comps month]);
    NSLog(@"week    :%ld",(long)[comps week]);
    NSLog(@"day     :%ld",(long)[comps day]);
    
    NSDateComponents *components = [[NSDateComponents alloc] init];
    components.day = -25;
    NSDate *testDate = [[NSCalendar currentCalendar] dateByAddingComponents:components toDate:[NSDate date] options:0];
    NSLog(@"testDate :%@",testDate);
    
    
}



-(void)aaaaaaaaaaaaaaaaa {
    
    
    unsigned units=NSMonthCalendarUnit|NSDayCalendarUnit|NSYearCalendarUnit|NSWeekdayCalendarUnit;
    NSCalendar *mycal=[[NSCalendar alloc]initWithCalendarIdentifier:NSGregorianCalendar];
    NSDate *now=[NSDate date];
    NSDateComponents *comp =[mycal components:units fromDate:now];
    NSInteger month=[comp month];
    NSInteger year =[comp year];
    NSInteger day=[comp day];
    
    NSCalendar *gregorian = [NSCalendar currentCalendar];
    NSDateComponents *dateComps = [gregorian components:NSWeekdayCalendarUnit fromDate:now];
    int daycount = [dateComps weekday] - 2;
    NSDate *weekdaybegin=[now addTimeInterval:-daycount*60*60*24];
    NSDate *weekdayend  =[now  addTimeInterval:(6-daycount)*60*60*24];
    NSDateFormatter *df1=[[NSDateFormatter alloc]init];
    NSLocale *mylocal=[[NSLocale alloc]initWithLocaleIdentifier:@"zh_CN"];
    [df1 setLocale:mylocal];
    [df1 setDateFormat:@"YYYY-MM-d"];
    now=weekdaybegin;
    comp=[mycal components:units fromDate:now];
    month=[comp month];
    year =[comp year];
    day=[comp day];
    
    
    NSString *date1;
    NSString *date2;
    date1=[[NSString alloc]initWithFormat:@"%d-%02d-%02d",year,month,day];//所要求的周一的日期
    now=weekdayend;
    comp=[mycal components:units fromDate:now];
    month=[comp month];
    year =[comp year];
    day=[comp day];
    date2=[[NSString alloc]initWithFormat:@"%d-%02d-%02d",year,month,day];//所要求的周日的日期
    
    NSLog(@" %@   %@",date1,date2);
}
-(void)ddddddddd {
    
//    NSDateComponents *dateComponents = [[NSDateComponents alloc] init];
//    
//    NSCalendar *calendar = [NSCalendar currentCalendar];
//    
//    //Get the current date's month
//    NSInteger month = [dateComponents month];
//    
//    //Create an NSDate for the first and last day of the month
//    NSDateComponents *comp = [calendar components:(NSYearCalendarUnit | NSMonthCalendarUnit | NSDayCalendarUnit) fromDate:[NSDate date]];
//    [comp setDay:1];
//    NSDate *firstOfMonth = [calendar dateFromComponents:comp];
//    [comp setMonth:[comp month]+1];
//    [comp setDay:0];
//    NSDate *lastOfMonth = [calendar dateFromComponents:comp];
//    
//    //Now get the first and last week number from there
//    NSUInteger unitFlags = NSWeekCalendarUnit;
//    //Create a date component object from today's date.
////    NSDateComponents *firstDateComponents = [calendar components:unitFlags
////                                                        fromDate:firstOfMonth // for current date
////                                                         options:0];
//    NSDateComponents *aas = [calendar components:NSCalendarCalendarUnit fromDate:firstOfMonth toDate:lastOfMonth options:NSCalendarCalendarUnit];
////    NSDateComponents *lastDateComponents = [calendar components:unitFlags
////                                                       fromDate:lastOfMonth // for current date
////                                                        options:0];
//    
//    
//    NSUInteger firstWeek = [firstDateComponents week];
//    NSUInteger lastWeek = [lastDateComponents week];
//    
//    
//    NSCalendar *cal = [NSCalendar currentCalendar];
//    NSDate *today = [NSDate date];
//    NSDateComponents *diff = [[NSDateComponents alloc] init];
//    [diff setDay:-17];
//    
//    NSDate *seventeenDaysAgo = [cal dateByAddingComponents:diff toDate:today];
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
