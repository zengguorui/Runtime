//
//  TestClass.h
//  RuntimeDemo
//
//  Created by 曾国锐 on 2018/12/4.
//  Copyright © 2018年 曾国锐. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NSObject+Runtime.h"

@interface TestClass : NSObject

@property (nonatomic, copy) NSString *publicProperty;

+ (void)classMethod:(NSString *)param;

- (void)publicMethod:(NSString *)param;

@end
