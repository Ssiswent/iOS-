//
//  Car.m
//  38-展示汽车数据(使用模型改进)
//
//  Created by Ssiswent on 2020/4/1.
//  Copyright © 2020 Ssiswent. All rights reserved.
//

#import "Car.h"

@implementation Car

+ (instancetype)carWithIcon:(NSString *)icon name:(NSString *)name
{
    Car *car = [[Car alloc]init];
    car.icon = icon;
    car.name = name;
    return car;
}

@end
