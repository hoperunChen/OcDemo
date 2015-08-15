//
//  main.m
//  OcDemo
//
//  Created by 陈锐 on 15/8/15.
//  Copyright (c) 2015年 陈锐. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Client.h"
#import "Testgroup.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Client *myClient = [[Client alloc] init];
        [myClient startUp];
    }
    return 0;
}
