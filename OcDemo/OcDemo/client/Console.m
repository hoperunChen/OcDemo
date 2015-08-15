//
//  Console.m
//  OcDemo
//
//  Created by 陈锐 on 15/8/15.
//  Copyright (c) 2015年 陈锐. All rights reserved.
//

#import "Console.h"
#import "ConvertUtils.h"

@implementation Console

static NSString *_shopName = @"myShopName";//应该从配置文件读取

+(NSString*)getShopName{
    return _shopName;
}

+(void)logShopName{
    NSLog(@"%@",[self getShopName]);
}

+(int)scanfInt{

    char value[100];
    scanf("%s",value);
    return [ConvertUtils charToInt:value] ;
}


@end
