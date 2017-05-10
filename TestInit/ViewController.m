//
//  ViewController.m
//  TestInit
//
//  Created by chenbowen on 2017/5/10.
//  Copyright © 2017年 chenbowen. All rights reserved.
//

#import "ViewController.h"
#import "Singleton.h"


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
     [Singleton shareInstance].num = 10;
}

/** 再次测试*/
- (IBAction)test:(id)sender {
    
    NSLog(@"num=10不会再次init----%d",[Singleton shareInstance].num);
}


/** 初次测试*/
- (IBAction)testAgain:(id)sender {
    
    NSLog(@"num=10会再次init----%d",[Singleton share].num);
}

@end
