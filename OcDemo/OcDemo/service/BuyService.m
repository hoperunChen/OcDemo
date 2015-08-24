//
//  BuyService.m
//  OcDemo
//
//  Created by 陈锐 on 15/8/18.
//  Copyright (c) 2015年 陈锐. All rights reserved.
//

#import "BuyService.h"
#import "Console.h"

@implementation BuyService

-(NSNumber*)buy{
    double rtn = 0.0;
    
    NSArray * commodities = [[NSArray alloc] initWithObjects:@"1 铅笔",@"2 钢笔",@"3 毛笔",@"4 中性笔", nil];
    NSArray * commodPrice = [[NSArray alloc] initWithObjects:[NSNumber numberWithInteger:10],[NSNumber numberWithInteger:20],[NSNumber numberWithInteger:30],[NSNumber numberWithInteger:40], nil];
    
    //    NSLog(@"%@",[commodPrice objectAtIndex:0]);
    
    NSString *commodStr =@"";
    for(id name in commodities){
        commodStr = [commodStr stringByAppendingString:name];
    }
    do{
        NSLog(@"%@\t0:结束购物",commodStr);
        int inValue = [Console scanfInt];
        if(inValue == 0)
            break;
        rtn = rtn + [[commodPrice objectAtIndex:inValue-1] doubleValue];
        NSLog(@"%@的价格是:%@",[commodities objectAtIndex:inValue-1],[commodPrice objectAtIndex:inValue-1]);
        NSLog(@"你已经消费了%f",rtn);
    }while(true);
    return [[NSNumber alloc] initWithDouble:rtn];
}
@end

