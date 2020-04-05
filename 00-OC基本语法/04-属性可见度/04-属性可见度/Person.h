//
//  Person.h
//  04-属性可见度
//
//  Created by Ssiswent on 2020/4/3.
//  Copyright © 2020 Ssiswent. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Person : NSObject
{
    @public
    NSString *name;
    @private
    NSInteger age;
    @protected
    NSString *gender;
}

@end

NS_ASSUME_NONNULL_END
