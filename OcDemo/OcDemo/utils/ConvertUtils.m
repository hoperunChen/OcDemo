//
//  ConvertUtils.m
//  OcDemo
//
//  Created by 陈锐 on 15/8/15.
//  Copyright (c) 2015年 陈锐. All rights reserved.
//

#import "ConvertUtils.h"

@implementation ConvertUtils

+(int)charToInt:(char*)cv{
    NSString *string_content = [[NSString alloc] initWithCString:(const char*)cv
                                                        encoding:NSASCIIStringEncoding];
    
    int i = [string_content intValue];
    return i;
}

+(NSString*)charToNSString:(char*)cv{
    NSString *string_content = [[NSString alloc] initWithCString:(const char*)cv
                                                        encoding:NSASCIIStringEncoding];
    return string_content;

}
@end
