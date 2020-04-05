//
//  Person.h
//  02-属性、点语法
//
//  Created by Ssiswent on 2020/4/3.
//  Copyright © 2020 Ssiswent. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Person : NSObject

@property (nonatomic, copy)NSString *name;
@property (nonatomic, copy)NSString *gender;
@property (nonatomic, assign)NSInteger age;

- (void)sayHello;

- (instancetype)initWithName:(NSString *)name age:(NSInteger)age gender:(NSString *)gender;


@end

NS_ASSUME_NONNULL_END
