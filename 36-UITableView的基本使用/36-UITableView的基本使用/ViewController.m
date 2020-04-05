//
//  ViewController.m
//  36-UITableView的基本使用
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
    
    //设置数据源
    self.tableView.dataSource = self;
}


#pragma mark - UITableViewDataSource

//告诉tableView一共有多少组数据
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 4;
}

//告诉tableView每组有多少行
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    if(section == 0)
    {
        return 2;
    }
    else if(section == 1)
    {
        return 6;
    }
    else if(section == 2)
    {
        return 6;
    }
    else
    {
        return 1;
    }
}

//告诉tableView每一行显示的内容(tableView每一行显示的内容一定是UITableViewCell或者它的子类)
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    //indexPath.section
    //indexPath.row
    UITableViewCell *cell = [[UITableViewCell alloc]init];
    if(indexPath.section == 0)
    {
        if(indexPath.row == 0)
        {
            cell.textLabel.text = @"通用";
        }
        else
        {
            cell.textLabel.text = @"隐私";
        }
    }
    else
    {
        cell.textLabel.text = [NSString stringWithFormat:@"%zd组-%ld行",indexPath.section,indexPath.row];
    }
    
    return cell;
}




@end
