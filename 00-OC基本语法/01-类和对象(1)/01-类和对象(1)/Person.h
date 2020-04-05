//
//  Person.h
//  01-类和对象(1)
//
//  Created by Ssiswent on 2020/4/3.
//  Copyright © 2020 Ssiswent. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Person : NSObject
{
    NSString *name; //NSString是一个类
    NSInteger age;  //NSInteger是数值类型
    NSString *gender;
}

- (instancetype)initWithName:(NSString *)_name age:(NSInteger)_age gender:(NSString *)_gender;

- (void)sayHello;

- (void)setName:(NSString *)_name;
- (void)setAge:(NSInteger)_age;
- (void)setGender:(NSString *)_gender;

- (NSString *)getName;
- (NSInteger)getAge;
- (NSString *)getGender;

@end

NS_ASSUME_NONNULL_END
