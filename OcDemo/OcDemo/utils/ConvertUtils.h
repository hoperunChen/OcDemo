//
//  ConvertUtils.h
//  OcDemo
//
//  Created by 陈锐 on 15/8/15.
//  Copyright (c) 2015年 陈锐. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ConvertUtils : NSObject
/**
 从char转换为int类型
 */
+(int)charToInt:(char*)cv;

/**
 从char转换为NSString类型
 */
+(NSString*)charToNSString:(char*)cv;
@end
