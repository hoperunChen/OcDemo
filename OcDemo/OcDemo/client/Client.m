//
//  Client.m
//  OcDemo
//
//  Created by 陈锐 on 15/8/15.
//  Copyright (c) 2015年 陈锐. All rights reserved.
//

#import "Client.h"
#import "Console.h"
#import "Controller.h"
#import "PageConstants.h"
#import "UserService.h"
#import "BuyService.h"


@implementation Client
{
    Controller *_controller;
}

- (void)startUp{
    NSLog(@"startUp");
    _controller = [[Controller alloc] init];
    [self index];
    
}

/**
 首页
 */
- (void)index{
loginPage:
    [_controller dispatch:INDEX_PAGE];
    int inValue = [Console scanfInt];
    switch (inValue) {
        case 1:
            [self login];
            break;
        case 2:
            //exit
            NSLog(@"exit");
            break;
        default:
            goto loginPage;
            break;
    }
}

/**
 登陆
 */
-(void)login{
    NSLog(@"请输入账号:");
    NSString *userName = [Console scanfString];
    NSLog(@"请输入密码:");
    NSString *passWord = [Console scanfString];
    NSLog(@"新建service判断登陆");
    UserService *userService = [[UserService alloc] init];
    Boolean flag = [userService userLogin:userName :passWord];
    if(flag){
        NSLog(@"登陆成功");
        [self main];
    }else
        NSLog(@"登陆失败");
}

-(void)main{
mainPage:
    [_controller dispatch:MAIN_PAGE];
    NSLog(@"请输入:");
    int inValue = [Console scanfInt];
    switch (inValue) {
        case 1:
            [self back];
            break;
        case 2:
            [self buy];
            break;
        case 3:
            NSLog(@"loginout");
            break;
        case 4:
            NSLog(@"exit");
            break;
        default:
            goto mainPage;
            break;
    }
}

-(void)back{
backPage:
    [_controller dispatch:BACK_PAGE];
}

-(void)buy{
    BuyService *buyService = [[BuyService alloc] init];
    [buyService buy];
}


@end
