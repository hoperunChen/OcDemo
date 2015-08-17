//
//  UserService.h
//  OcDemo
//
//  Created by 陈锐 on 15/8/17.
//  Copyright (c) 2015年 陈锐. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface UserService : NSObject

-(Boolean)userLogin:(NSString*)userName :(NSString*)userPass;

@end
