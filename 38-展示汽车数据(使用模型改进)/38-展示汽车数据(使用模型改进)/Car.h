//
//  Car.h
//  38-展示汽车数据(使用模型改进)
//
//  Created by Ssiswent on 2020/4/1.
//  Copyright © 2020 Ssiswent. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Car : NSObject

//图标
@property (nonatomic, copy)NSString *icon;

//名字
@property (nonatomic, copy)NSString *name;

+ (instancetype)carWithIcon:(NSString *)icon name:(NSString *)name;

@end

NS_ASSUME_NONNULL_END
