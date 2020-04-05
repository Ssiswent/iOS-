//
//  Student.m
//  01-类和对象(1)
//
//  Created by Ssiswent on 2020/4/3.
//  Copyright © 2020 Ssiswent. All rights reserved.
//

#import "Student.h"

@implementation Student

- (NSInteger)getNumber
{
    return number;
}

- (void)sayHello
{
    NSLog(@"学生的姓名是：%@",name);
}

- (instancetype)initWithName:(NSString *)_name age:(NSInteger)_age gender:(NSString *)_gender number:(NSInteger)_number score:(CGFloat)_score
{
    if (self = [super init]) {
        name = _name;
        age = _age;
        gender = _gender;
        number = _number;
        score = _score;
    }
    return self;
}

//- (instancetype)initWithName:(NSString *)_name
//{
//    return [self initWithName:_name age:0 gender:nil number:0 score:0.0f];
//}

+ (instancetype)studentWithName:(NSString *)_name age:(NSInteger)_age gender:(NSString *)_gender number:(NSInteger)_number score:(CGFloat)_score
{
    //1.实例化一个对象
    Student *student = [[Student alloc]initWithName:_name age:_age gender:_gender number:_number score:_score];
    return student;
}

@end
