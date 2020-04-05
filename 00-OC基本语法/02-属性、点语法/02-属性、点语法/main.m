//
//  main.m
//  02-属性、点语法
//
//  Created by Ssiswent on 2020/4/3.
//  Copyright © 2020 Ssiswent. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"

int main(int argc, const char * argv[]) {
//    @autoreleasepool {
//        // insert code here...
//        NSLog(@"Hello, World!");
//    }
//    return 0;

    Person *person = [[Person alloc]initWithName:@"Jay" age:35 gender:@"Man"];
    [person sayHello];
    NSLog(@"person's name:%@",person.name);
    [person setName:@"Jerry"];
    person.name = @"Juice";
    NSLog(@"person's name:%@",person.name);
}
