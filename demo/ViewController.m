//
//  ViewController.m
//  demo
//
//  Created by fc01 on 15/4/20.
//  Copyright (c) 2015年 fc01. All rights reserved.
//

#import "ViewController.h"
#import "TSNotificationCenter.h"



@interface ViewController ()

@end


@implementation ViewController



- (void)viewDidLoad {
    [super viewDidLoad];
    
    //self dealloc ---> will auto remove
    
    [self ts_helloWorld:^{
        NSLog(@"hello world");
    }];
    
    [self ts_hello:^(NSString *name) {
        NSLog(@"hello %@",name);
    }];
    
    [self ts_didMove:^(int x, int y, int z) {
        NSLog(@"x=%d  y=%d  z=%d",x,y,z);
    }];
    
    
    [TSNotificationCenter call_helloWorld];
    [TSNotificationCenter call_hello_with_name:@"fc01"];
    [TSNotificationCenter call_didMove_with_x:11 y:22 z:33];
    
}
@end

