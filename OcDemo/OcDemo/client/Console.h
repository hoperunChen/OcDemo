//
//  Console.h
//  OcDemo
//
//  Created by 陈锐 on 15/8/15.
//  Copyright (c) 2015年 陈锐. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Console : NSObject


+(NSString*)getShopName;

+(void)logShopName;

+(int)scanfInt;

+(NSString*)scanfString;
@end
