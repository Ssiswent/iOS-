//
//  Person.m
//  01-类和对象(1)
//
//  Created by Ssiswent on 2020/4/3.
//  Copyright © 2020 Ssiswent. All rights reserved.
//

#import "Person.h"

@implementation Person

- (void)setName:(NSString *)_name
{
    //设置给当前对象的属性
    name = _name;
}

- (void)setAge:(NSInteger)_age
{
    age = _age;
}

- (void)setGender:(NSString *)_gender
{
    gender = _gender;
}

- (NSString *)getName
{
    //访问当前对象的属性
    return name;
}

- (NSInteger)getAge
{
    return age;;
}

- (NSString *)getGender
{
    return gender;
}

- (instancetype)initWithName:(NSString *)_name age:(NSInteger)_age gender:(NSString *)_gender
{
    //1.原始初始化(将内存内变量置为0)
    if (self = [super init]) {
        //2.设置当前对象的属性为对应的形参
        name = _name;
        age = _age;
        gender = _gender;
    }
    //3.返回当前对象
    return self;
    
}

- (void)sayHello
{
    NSLog(@"Hello world.");
}

@end
