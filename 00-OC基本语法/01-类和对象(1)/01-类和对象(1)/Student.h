//
//  Student.h
//  01-类和对象(1)
//
//  Created by Ssiswent on 2020/4/3.
//  Copyright © 2020 Ssiswent. All rights reserved.
//

#import "Person.h"

NS_ASSUME_NONNULL_BEGIN

@interface Student : Person
{
    NSInteger number;
    CGFloat score;
}

- (NSInteger)getNumber;

//指定初始化方法，通常是能够赋初始值最多的方法
- (instancetype)initWithName:(NSString *)_name age:(NSInteger)_age gender:(NSString *)_gender number:(NSInteger)_number score:(CGFloat)_score;
//自定义初始化方法
//- (instancetype)initWithName:(NSString *)_name;
//...

//便利构造器
+ (instancetype)studentWithName:(NSString *)_name age:(NSInteger)_age gender:(NSString *)_gender number:(NSInteger)_number score:(CGFloat)_score;

@end

NS_ASSUME_NONNULL_END
