//
//  Singleton.m
//  TestInit
//
//  Created by chenbowen on 2017/5/10.
//  Copyright © 2017年 chenbowen. All rights reserved.
//

#import "Singleton.h"


static id _instance;

@implementation Singleton


//2017-05-10 15:19:20.785 TestInit[7322:210274] num=10不会再次init----10
//2017-05-10 15:19:27.544 TestInit[7322:210274] -[Singleton init]
//2017-05-10 15:19:27.545 TestInit[7322:210274] num=10会再次init----10


/*1. 初始化之后,不会再去改变他的值了
  2. init会再次调用,但是不会将他的值初始化
 3.重写init方法可以对属性进行赋值
 
 */


+(instancetype)shareInstance{
    
    if (!_instance) {
        _instance = [[self alloc]init];
    }
    NSLog(@"Singleton:地址---%@",_instance);
    
    return _instance;
}

+ (instancetype)share{
    
     return [[self alloc]init];
}


- (instancetype)init
{
    self = [super init];
    if (self) {
        NSLog(@"%s",__func__);
        
    }
    return self;
}

//重写该方法，控制内存的分配，永远只分配一次存储空间
+ (instancetype)allocWithZone:(struct _NSZone *)zone
{
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _instance = [super allocWithZone:zone];
        NSLog(@"Singleton--allocWithZone--%@",[NSThread currentThread]);
    });
    return _instance;
}



@end
