//
//  Client.m
//  OcDemo
//
//  Created by 陈锐 on 15/8/15.
//  Copyright (c) 2015年 陈锐. All rights reserved.
//

#import "Client.h"
#import "Console.h"

@implementation Client
    - (void)startUp{
        NSLog(@"startUp");
        [self showLoginPage];
    }

    - (void)showLoginPage{
    loginPage:
        [Console logShopName];
        NSLog(@"1.登陆");
        NSLog(@"2.退出");
        NSLog(@"请选择");
        int inValue = [Console scanfInt];
        switch (inValue) {
            case 1:
                //login
                NSLog(@"go login");
                break;
            case 2:
                //exit
                NSLog(@"exit");
                break;
            default:
                goto loginPage;
                break;
        }
        
//        char inValue[100];
////        scanf();
//        scanf("%s",inValue);  //接受控制台输入字符串
//        gets(inValue, 100, fp);  gets会导致越界  不支持使用
        
//        NSLog(@"%s",inValue);
    }


@end
