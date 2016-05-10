//
//  ViewController.m
//  autoLayout
//
//  Created by 陈培升 on 16/4/30.
//  Copyright © 2016年 陈培升. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //创建view添加到父view中
    UIView* myView1 = [[UIView alloc]init];
    myView1.backgroundColor = [UIColor redColor];
    [self.view addSubview:myView1];
    
    UIView* myView2 = [[UIView alloc]init];
    myView2.backgroundColor = [UIColor yellowColor];
    [self.view addSubview:myView2];
    
    //禁用autoresizing功能；用translatesAutoresizingMaskIntoConstranits属性
    self.view.translatesAutoresizingMaskIntoConstraints = NO;
    myView1.translatesAutoresizingMaskIntoConstraints = NO;
    myView2.translatesAutoresizingMaskIntoConstraints = NO;
    //采用VFL语言创建约束：
    NSArray* arrH = [NSLayoutConstraint constraintsWithVisualFormat:@"H:|-50-[myView1]-50-[myView2(==myView1)]-50-|" options:NSLayoutFormatAlignAllTop|NSLayoutFormatAlignAllBottom metrics:nil views:@{@"myView1":myView1,@"myView2":myView2}];
    [self.view addConstraints:arrH];
    
    NSArray* arrV = [NSLayoutConstraint constraintsWithVisualFormat:@"V:|-50-[myView1]-50-[myView2]-50-|" options:0 metrics:nil views:@{@"myView1":myView1,@"myView2":myView2}];
    [self.view addConstraints:arrV];
    
    
//    采用传统方法创建约束：
//    NSLayoutConstraint* leftConstraint = [NSLayoutConstraint constraintWithItem:myView attribute:NSLayoutAttributeLeft relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeLeft multiplier:1 constant:20];
//    [self.view addConstraint:leftConstraint];
//    
//    NSLayoutConstraint* topConstraint = [NSLayoutConstraint constraintWithItem:myView attribute:NSLayoutAttributeTop relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeTop multiplier:1 constant:20];
//    [self.view addConstraint:topConstraint];
//    
//    NSLayoutConstraint* rightConstraint = [NSLayoutConstraint constraintWithItem:myView attribute:NSLayoutAttributeRight relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeRight multiplier:0.4 constant:-2];
//    [self.view addConstraint:rightConstraint];
//    
//    NSLayoutConstraint* bottomConstraint = [NSLayoutConstraint constraintWithItem:myView attribute:NSLayoutAttributeBottom relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeBottom multiplier:1 constant:-20];
//    [self.view addConstraint:bottomConstraint];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
