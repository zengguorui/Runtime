//
//  TestClass.m
//  RuntimeDemo
//
//  Created by 曾国锐 on 2018/12/4.
//  Copyright © 2018年 曾国锐. All rights reserved.
//

#import "TestClass.h"

@interface TestClass()
{
    NSInteger _variable1;
    BOOL _variable2;
}

@property (nonatomic, strong) NSArray *privateProperty;

@end

@implementation TestClass

+ (void)classMethod:(NSString *)param;
{
    NSLog(@"%s",__FUNCTION__);
}

- (void)publicMethod:(NSString *)param;
{
    NSLog(@"%s",__FUNCTION__);
}

- (void)privateMethod
{
    
}

/** 没有找到SEL时会执行下面的方法 */
+ (BOOL)resolveInstanceMethod:(SEL)sel
{
    [self addMethod:sel methodImp:@selector(dynamicAddMethod)];
    return YES;
}

- (void)dynamicAddMethod
{
    NSLog(@"找不到方法时执行这里");
}

@end
