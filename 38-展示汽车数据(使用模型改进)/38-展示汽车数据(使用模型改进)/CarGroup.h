//
//  CarGroup.h
//  38-展示汽车数据(使用模型改进)
//
//  Created by Ssiswent on 2020/4/1.
//  Copyright © 2020 Ssiswent. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface CarGroup : NSObject

//头部标题
@property (nonatomic, copy)NSString *header;

//尾部标题
@property (nonatomic, copy)NSString *footer;

//这组所有的车
@property (nonatomic, strong)NSArray *cars;
@end

NS_ASSUME_NONNULL_END
