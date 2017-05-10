//
//  Singleton.h
//  TestInit
//
//  Created by chenbowen on 2017/5/10.
//  Copyright © 2017年 chenbowen. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Singleton : NSObject

/** 初始化只会进行一次*/
+(instancetype)shareInstance;

/** 每次调用进行初始化*/
+ (instancetype)share;



/** 实验数据*/
@property (nonatomic ,assign) int num;


@end
