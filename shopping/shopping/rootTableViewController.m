//
//  rootTableViewController.m
//  shopping
//
//  Created by 陈培升 on 16/4/18.
//  Copyright © 2016年 陈培升. All rights reserved.
//

#import "rootTableViewController.h"

@interface rootTableViewController ()
//定义用于接收模型的数组属性
@property(nonatomic,strong)NSMutableArray*allArr;

@end

@implementation rootTableViewController
//使用懒加载的方式实现一个用于存储plist文件所有内容模型的数组
-(NSMutableArray*)allArr{
    if (!_allArr) {
        _allArr = [NSMutableArray array];
        NSString*strPath = [[NSBundle mainBundle]pathForResource:@"data.plist" ofType:nil];
        NSArray*array = [NSArray arrayWithContentsOfFile:strPath];
        for (NSDictionary*dict in array) {
            dictModel*model = [[dictModel alloc]dictModelWithDict:dict];
            [_allArr addObject:model];
        }
    }
    return _allArr;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
}

#pragma mark - Table view data source
//定义列表有多少个区块
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}
//定义每个区块多少列表项目
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.allArr.count;
}

//实现列表展示以及项目内容
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    TableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell" forIndexPath:indexPath];
    cell.label = [cell viewWithTag:1];
    dictModel*model = self.allArr[indexPath.row];
    cell.label.text = [NSString stringWithFormat:@"%@",model.name];
    cell.price.text = [NSString stringWithFormat:@"价格：%d",model.price];
    cell.count.text = [NSString stringWithFormat:@"销量：%d",model.count];
    cell.imgView.image = [UIImage imageNamed:model.pic];
    return cell;
}
//实现选择列表项目时的动作
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    dictModel*model = self.allArr[indexPath.row];
    ViewController* content = [self.storyboard instantiateViewControllerWithIdentifier:@"ContentVC"];
    [content setM:model];
    [self.navigationController pushViewController:content animated:YES];
    
}


@end
