//
//  Person.m
//  02-属性、点语法
//
//  Created by Ssiswent on 2020/4/3.
//  Copyright © 2020 Ssiswent. All rights reserved.
//

#import "Person.h"

@implementation Person

- (void)sayHello
{
    NSLog(@"%@,Hello world.",self.name);
}

- (instancetype)initWithName:(NSString *)name age:(NSInteger)age gender:(NSString *)gender
{
    if (self = [super init]) {
        self.name = name;
        self.age = age;
        self.gender = gender;
    }
    return self;
}

@end
