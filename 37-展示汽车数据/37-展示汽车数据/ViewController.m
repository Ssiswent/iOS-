//
//  ViewController.m
//  37-展示汽车数据
//
//  Created by Ssiswent on 2020/4/1.
//  Copyright © 2020 Ssiswent. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()<UITableViewDataSource>
@property (weak, nonatomic) IBOutlet UITableView *tableView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    //也可以在storyboard中拖线设置
//    self.tableView.dataSource = self;
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 2;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    if(section == 0)
    {
        return 2;
    }
    else
    {
        return 3;
    }
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [[UITableViewCell alloc]init];
    //设置cell右侧的指示样式
    cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    if(indexPath.section == 0)
    {
        if(indexPath.row == 0)
        {
            cell.imageView.image = [UIImage imageNamed:@"m_2_100"];
            cell.textLabel.text = @"奔驰";
        }
        else
        {
            cell.imageView.image = [UIImage imageNamed:@"m_3_100"];
            cell.textLabel.text = @"宝马";
        }
    }
    else
    {
        if(indexPath.row == 0)
        {
            cell.imageView.image = [UIImage imageNamed:@"m_7_100"];
            cell.textLabel.text = @"丰田";
        }
        else if(indexPath.row == 1)
        {
            cell.imageView.image = [UIImage imageNamed:@"m_18_100"];
            cell.textLabel.text = @"马自达";
        }
        else
        {
            cell.imageView.image = [UIImage imageNamed:@"m_26_100"];
            cell.textLabel.text = @"本田";
        }
    }
    
//    //也可以：
//    NSString *name = nil;
//    NSString *icon = nil;
//    if(indexPath.section == 0)
//    {
//        if(indexPath.row == 0)
//        {
//            icon = @"m_2_100"];
//            name = @"奔驰";
//        }
//        else
//        {
//            icon = @"m_3_100"];
//            name = @"宝马";
//        }
//    }
//    cell.imageView.image = [UIImage imageNamed:icon];
//    cell.textLabel.text = name;
    
    return cell;
}

//告诉tableView每组的头部标题
- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section
{
    if(section == 0)
    {
        return @"德系品牌";
    }
    else
    {
        return @"日系品牌";
    }
}

//告诉tableView每组的尾部标题
- (NSString *)tableView:(UITableView *)tableView titleForFooterInSection:(NSInteger)section
{
    if(section == 0)
    {
        return @"德系品牌Good";
    }
    else
    {
        return @"日系品牌Great";
    }
}

@end
