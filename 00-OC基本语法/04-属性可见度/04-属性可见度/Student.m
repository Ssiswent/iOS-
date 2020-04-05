//
//  Student.m
//  04-属性可见度
//
//  Created by Ssiswent on 2020/4/3.
//  Copyright © 2020 Ssiswent. All rights reserved.
//

#import "Student.h"

@implementation Student

- (void)test
{
    self->name = @"Jerry";
    self->gender = @"Man";
    //错误
//    self->age = 22;
    
    NSLog(@"%@",self->gender);
}


@end
