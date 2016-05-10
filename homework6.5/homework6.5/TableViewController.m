//
//  TableViewController.m
//  homework6.5
//
//  Created by 陈培升 on 16/5/4.
//  Copyright © 2016年 陈培升. All rights reserved.
//

#import "TableViewController.h"
#import "ViewController.h"

@interface TableViewController ()
@property(nonatomic,strong)UIBarButtonItem *btnLeft;
@property(nonatomic,strong)UIBarButtonItem *btnRight;
//创建一个可变数组用于存储显示内容
@property(nonatomic,strong)NSMutableArray *allDate;
//用于把系统时间转成字符串的类方法
+ (NSString*)nowTime;


@end

@implementation TableViewController
//懒加载数组
- (NSMutableArray*)allDate{
    if (!_allDate) {
        _allDate = [NSMutableArray array];
    }
    return _allDate;
}

//懒加载左按钮
- (UIBarButtonItem*)btnLeft{
    if (!_btnLeft) {
        _btnLeft = [[UIBarButtonItem alloc]initWithTitle:@"Edit" style:UIBarButtonItemStylePlain target:self action:@selector(btnEditSel)];
        if (self.allDate.count == 0) {
            [self.btnLeft setEnabled:false];
        }
    }
    return _btnLeft;
}
//懒加载右按钮
- (UIBarButtonItem*)btnRight{
    if (!_btnRight) {
        _btnRight = [[UIBarButtonItem alloc]initWithTitle:@"Add" style:UIBarButtonItemStylePlain target:self action:@selector(btnAddSel)];
    }
    return _btnRight;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    //指定左右按钮
    self.navigationItem.leftBarButtonItem = self.btnLeft;
    self.navigationItem.rightBarButtonItem = self.btnRight;
}
//编辑按钮的响应函数
- (void)btnEditSel{
    if ([self.btnLeft.title  isEqual: @"Edit"]) {
        [self.btnLeft setTitle:@"Done"];
        [self.btnRight setEnabled:false];
        [self.tableView setEditing:true];
    }else if ([self.btnLeft.title isEqual:@"Done"]){
        [self.btnLeft setTitle:@"Edit"];
        [self.btnRight setEnabled:true];
        [self.tableView setEditing:false];
    }
}
//添加按钮的响应函数
- (void)btnAddSel{
        [self.allDate addObject:[TableViewController nowTime]];
        [self.tableView insertRowsAtIndexPaths:@[[NSIndexPath indexPathForRow:0 inSection:0]] withRowAnimation:UITableViewRowAnimationTop];
    if (self.allDate.count != 0) {
        [self.btnLeft setEnabled:true];
    }
}

+ (NSString*)nowTime{
    NSDate *date = [NSDate date];
    NSDateFormatter *dataFormatter = [[NSDateFormatter alloc]init];
    [dataFormatter setDateFormat:@"YYYY/MM/dd hh:mm:ss SS"];
    NSString *dateStr = [dataFormatter stringFromDate:date];
    return dateStr;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.allDate.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell" forIndexPath:indexPath];
    UILabel *label = [cell viewWithTag:1];
    label.text = self.allDate[self.allDate.count-1];
    
    return cell;
}


// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}


// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        [self.allDate removeObjectAtIndex:indexPath.row];
        [self.tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
        if (self.allDate.count == 0) {
            [self.btnLeft setEnabled:false];
            [self.btnLeft setTitle:@"Edit"];
            [self.btnRight setEnabled:true];
        }
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        
    }
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    ViewController *content = [self.storyboard instantiateViewControllerWithIdentifier:@"contentVC"];
    [content setStrCon:self.allDate[indexPath.row]];
    [self.navigationController pushViewController:content animated:true];
}

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
