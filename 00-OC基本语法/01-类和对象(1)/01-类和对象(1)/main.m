//
//  main.m
//  01-类和对象(1)
//
//  Created by Ssiswent on 2020/4/3.
//  Copyright © 2020 Ssiswent. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"
#import "Student.h"

int main(int argc, const char * argv[]) {
//    @autoreleasepool {
//        // insert code here...
//        NSLog(@"Hello, World!");
//    }
    
    //1.创建Person类的实例对象
//    Person *person = [[Person alloc]initWithName:@"Jay" age:35 gender:@"Man"];
    //2.给person发送实例消息sayHello
//    [person sayHello];
//    NSLog(@"person's name:%@",[person getName]);
//    [person setName:@"Jerry"];
//    NSLog(@"person's name:%@",[person getName]);
    
    //3.实例化Student类的实例对象
    Student *student = [[Student alloc]init];
    [student setName:@"Jack"];
    [student sayHello];
    
    //4.通过便利构造器创建实例对象
    Student *student1 = [Student studentWithName:@"Shirley" age:21 gender:@"Woman" number:173050096 score:95.0];
    [student1 sayHello];
    NSLog(@"Your name:%@\nYour age:%zd\nYour number:%ld",[student1 getName],[student1 getAge],[student1 getNumber]);
    
    
    return 0;
    
    
}
