//
//  ViewController.m
//  browser
//
//  Created by 陈培升 on 16/4/17.
//  Copyright © 2016年 陈培升. All rights reserved.
//

#import "ViewController.h"
@interface ViewController ()
//定义一个懒加载方式动态数组，数组用于储存所有从plist文件中读取出来的模型
@property(nonatomic,strong)NSMutableArray*allArr;
//定义控件，标题栏，图片显示空间以及上下图片按钮
@property(nonatomic,strong)UILabel*titleLabel;
@property(nonatomic,strong)UIImageView*imgView;
@property(nonatomic,strong)UIButton*btnBack;
@property(nonatomic,strong)UIButton*btnNext;
//定义一个int类型数值用于表示当前页数
@property(nonatomic,assign)int Index;

@end

@implementation ViewController
//为数组写懒加载函数（首先判断数组是否是第一次调用，是的话对数组进行初始化）
-(NSMutableArray*)allArr
{
    if (!_allArr) {
        _allArr = [NSMutableArray array];
        NSString*strPath = [[NSBundle mainBundle]pathForResource:@"picList.plist" ofType:nil];
        NSArray*array = [NSArray arrayWithContentsOfFile:strPath];
        for (NSDictionary*dict in array) {
            singerModel*model = [singerModel singerModelWithDict:dict];
            [_allArr addObject:model];
        }
    }
    
    return _allArr;
}
//将所有控件进行懒加载
-(UILabel*)titleLabel
{
    if (!_titleLabel) {
        _titleLabel = [[UILabel alloc]initWithFrame:CGRectMake(60, 60, 200, 50)];
        _titleLabel.backgroundColor = [UIColor redColor];
        [self.view addSubview:_titleLabel];
    }
    
    return _titleLabel;
}

-(UIImageView*)imgView
{
    if (!_imgView) {
        UIImageView*imgView = [[UIImageView alloc]initWithFrame:CGRectMake(60, 120, 200, 200)];
        imgView.backgroundColor = [UIColor redColor];
        _imgView = imgView;
        [self.view addSubview:_imgView];
    }
    
    return _imgView;
}

-(UIButton*)btnBack
{
    if (!_btnBack) {
        UIButton*btnBack = [[UIButton alloc]initWithFrame:CGRectMake(60, 330, 95, 50)];
        btnBack.backgroundColor = [UIColor blueColor];
        [btnBack setTitle:@"上一张" forState:normal];
        //为按钮添加响应函数
        [btnBack addTarget:self action:@selector(setBack) forControlEvents:UIControlEventTouchUpInside];
        _btnBack = btnBack;
        [self.view addSubview:_btnBack];
    }
    
    return _btnBack;
}

-(UIButton*)btnNext
{
    if (!_btnNext) {
        UIButton*btnNext = [[UIButton alloc]initWithFrame:CGRectMake(165, 330, 95, 50)];
        btnNext.backgroundColor = [UIColor blueColor];
        [btnNext setTitle:@"下一张" forState:normal];
        //为按钮添加响应函数
        [btnNext addTarget:self action:@selector(setNext) forControlEvents:UIControlEventTouchUpInside];
        _btnNext = btnNext;
        [self.view addSubview:_btnNext];
    }
    
    return _btnNext;
    
}
//为按钮添加相应函数
-(void)setNext
{
    if (self.Index>=0&&self.Index<self.allArr.count-1) {
        self.Index++;
        singerModel*model = self.allArr[self.Index];
        NSString*titleStr = [NSString stringWithFormat:@"%@  %d/%d",model.name,self.Index+1,self.allArr.count];
        _titleLabel.text = titleStr;
        _titleLabel.textAlignment = 1;
        [_imgView setImage:[UIImage imageNamed:model.pic]];
        //如果按钮到达边界，就不可使用
        _btnBack.enabled = YES;
        _btnBack.backgroundColor = [UIColor blueColor];
        if (self.Index==self.allArr.count-1) {
            _btnNext.enabled = NO;
            _btnNext.backgroundColor = [UIColor grayColor];
        }
    }
}

-(void)setBack
{
    if (self.Index>0&&self.Index<=self.allArr.count-1) {
        self.Index--;
        singerModel*model = self.allArr[self.Index];
        NSString*titleStr = [NSString stringWithFormat:@"%@  %d/%d",model.name,self.Index+1,self.allArr.count];
        _titleLabel.text = titleStr;
        _titleLabel.textAlignment = 1;
        [_imgView setImage:[UIImage imageNamed:model.pic]];
        //如果按钮到达边界，就不可使用
        _btnNext.enabled = YES;
        _btnNext.backgroundColor = [UIColor blueColor];
        if (self.Index==0) {
            _btnBack.enabled = NO;
            _btnBack.backgroundColor = [UIColor grayColor];
        }
    }
}

-(void)showCurrentPage:(int)iPage
{
    singerModel*model = self.allArr[iPage];//将数组中对应下标的元素赋值给模型
    NSString*titleStr = [NSString stringWithFormat:@"%@  %d/%d",model.name,iPage+1,self.allArr.count];
    self.titleLabel.text = titleStr;
    self.titleLabel.textAlignment = 1;
    [self.imgView setImage:[UIImage imageNamed:model.pic]];

}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.btnBack;
    self.btnNext;
    [self showCurrentPage:self.Index];
}
@end
