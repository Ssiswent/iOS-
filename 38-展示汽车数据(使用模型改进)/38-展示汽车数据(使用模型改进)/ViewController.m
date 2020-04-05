//
//  ViewController.m
//  38-展示汽车数据(使用模型改进)
//
//  Created by Ssiswent on 2020/4/1.
//  Copyright © 2020 Ssiswent. All rights reserved.
//

#import "ViewController.h"
#import "CarGroup.h"
#import "Car.h"

@interface ViewController ()<UITableViewDataSource>
@property (weak, nonatomic) IBOutlet UITableView *tableView;

//所有的组模型
@property (nonatomic, strong)NSArray *carGroups;

@end

@implementation ViewController

//重写Get方法，懒加载
- (NSArray *)carGroups
{
    if (_carGroups == nil) {
        CarGroup *group0 = [[CarGroup alloc]init];
        group0.header = @"德系品牌";
        group0.footer = @"德系品牌Good";
        group0.cars = @[
            [Car carWithIcon:@"m_2_100" name:@"奔驰"],
            [Car carWithIcon:@"m_3_100" name:@"宝马"]
        ];
        
        CarGroup *group1 = [[CarGroup alloc]init];
        group1.header = @"日系品牌";
        group1.footer = @"日系品牌Great";
        group1.cars = @[
            [Car carWithIcon:@"m_7_100" name:@"丰田"],
            [Car carWithIcon:@"m_18_100" name:@"马自达"],
            [Car carWithIcon:@"m_26_100" name:@"本田"],
        ];
        
        _carGroups = @[group0,group1];
    }
    return _carGroups;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return self.carGroups.count;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    //取出第Section组对应的组模型
    CarGroup *group = self.carGroups[section];
    
    return group.cars.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    //1.创建cell
    UITableViewCell *cell = [[UITableViewCell alloc]init];
    //2.设置cell右侧的指示样式
    cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    
    //3.设置数据
    
    //3.1取出indexPath.section对应的组模型
    CarGroup *group = self.carGroups[indexPath.section];
    //3.2取出indexPath.row对应的车模型
    Car *car = group.cars[indexPath.row];
    //3.3设置图标和名字
    cell.imageView.image = [UIImage imageNamed:car.icon];
    cell.textLabel.text = car.name;

    return cell;
}

- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section
{
    CarGroup *group = self.carGroups[section];
    return group.header;
}

- (NSString *)tableView:(UITableView *)tableView titleForFooterInSection:(NSInteger)section
{
    CarGroup *group = self.carGroups[section];
    return group.footer;
}



@end
