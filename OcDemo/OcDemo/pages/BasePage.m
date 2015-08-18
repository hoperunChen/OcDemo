//
//  BasePage.m
//  OcDemo
//
//  Created by 陈锐 on 15/8/15.
//  Copyright (c) 2015年 陈锐. All rights reserved.
//

#import "BasePage.h"
#import "Console.h"

@implementation BasePage



-(void)show{
    [self beforShow];
    [self showTitle];
    [self showContent];
    [self showFoot];
    [self afterShow];
}

-(void)beforShow{
    NSLog(@"******************************");
}

-(void)showTitle{
    [Console logShopName];
}

-(void)showContent{
//    NSLog(@"super showContent");
}

-(void)showFoot{
//    [Console logShopName];
}

-(void)afterShow{
//    NSLog(@"super afterShow");
    NSLog(@"******************************");
}

@end
