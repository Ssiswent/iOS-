//
//  main.m
//  04-属性可见度
//
//  Created by Ssiswent on 2020/4/3.
//  Copyright © 2020 Ssiswent. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"
#import "Student.h"

int main(int argc, const char * argv[]) {
    Person *person = [[Person alloc]init];
    person->name = @"Jay";
/*    错误
    person->age = 22;
    person->gender = @"Man ";
 */
    NSLog(@"%@",person->name);
    
    Student *stu = [[Student alloc]init];
    [stu test];
    
    NSArray *array = @[@"a",@"b",@"c"];
    
    NSString *lastObj = [array lastObject];
    
    NSDictionary *dict = @{@"name":@"Jay",
                           @"age":@18
    };
    NSLog(@"%@",[dict objectForKey:@"age"]);
    
    
    return 0;
}
