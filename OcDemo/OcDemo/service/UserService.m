//
//  UserService.m
//  OcDemo
//
//  Created by 陈锐 on 15/8/17.
//  Copyright (c) 2015年 陈锐. All rights reserved.
//

#import "UserService.h"

@implementation UserService
-(Boolean)userLogin:(NSString*)userName :(NSString*)userPass{
    Boolean flag = false;
    if(userName == nil && userName.length<1){
        flag = false;
    }else if(userPass == nil && userPass.length<1){
        flag = false;
    }else{
        flag = [userName isEqualToString:@"admin"] && [userPass isEqualToString:@"123"];
    }
    return flag;
}
@end
