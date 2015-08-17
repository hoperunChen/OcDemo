//
//  Controller.m
//  OcDemo
//
//  Created by 陈锐 on 15/8/15.
//  Copyright (c) 2015年 陈锐. All rights reserved.
//

#import "Controller.h"
#import "Console.h"
#import "IndexPage.h"
#import "MainPage.h"
#import "PageConstants.h"


@implementation Controller




-(void)dispatch:(NSString*)key{
    BasePage *page = [self getPage:key];
    [page show];
}

-(BasePage*)getPage:(NSString*)key{
    BasePage *page;
    if(key == INDEX_PAGE)
        page = [[IndexPage alloc] init];
    else if(key == MAIN_PAGE)
        page = [[MainPage alloc] init];
    return page;
}
@end

