//
//  TestClass+Category.h
//  RuntimeDemo
//
//  Created by 曾国锐 on 2018/12/4.
//  Copyright © 2018年 曾国锐. All rights reserved.
//

#import "TestClass.h"

@interface TestClass (Category)

@property (nonatomic, copy) NSString *categroyProperty;

+ (void)categoryClassMethod;

- (void)categoryMethod;

@end
