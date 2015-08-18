//
//  BuyService.m
//  OcDemo
//
//  Created by 陈锐 on 15/8/18.
//  Copyright (c) 2015年 陈锐. All rights reserved.
//

#import "BuyService.h"

@implementation BuyService

-(double)buy{
    NSArray * commodities = [[NSArray alloc] initWithObjects:@"1 铅笔",@"2 钢笔",@"3 毛笔",@"4 中性笔", nil];
    NSArray * commodPrice = [[NSArray alloc] initWithObjects:[NSNumber numberWithInteger:10],[NSNumber numberWithInteger:20],[NSNumber numberWithInteger:30],[NSNumber numberWithInteger:40], nil];
    NSLog(@"%@",[commodPrice objectAtIndex:0]);
//    for(id day in commodPrice){
//        NSLog(@"%d",day);
//    }
    return 0;
}
@end

