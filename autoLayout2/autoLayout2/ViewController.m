//
//  ViewController.m
//  autoLayout2
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
    UIView* redView = [[UIView alloc]init];
    redView.backgroundColor = [UIColor redColor];
    [self.view addSubview:redView];
    
    UIView* greenView = [[UIView alloc]init];
    greenView.backgroundColor = [UIColor greenColor];
    [self.view addSubview:greenView];
    
    UIView* blueView = [[UIView alloc]init];
    blueView.backgroundColor = [UIColor blueColor];
    [redView addSubview:blueView];
    
    self.view.translatesAutoresizingMaskIntoConstraints = NO;
    redView.translatesAutoresizingMaskIntoConstraints = NO;
    greenView.translatesAutoresizingMaskIntoConstraints = NO;
    blueView.translatesAutoresizingMaskIntoConstraints = NO;
    
    NSArray* arrH = [NSLayoutConstraint constraintsWithVisualFormat:@"H:|-20-[redview]-20-[greenview(==redview)]-20-|" options:NSLayoutFormatAlignAllTop|NSLayoutFormatAlignAllBottom metrics:nil views:@{@"redview":redView,@"greenview":greenView}];
    [self.view addConstraints:arrH];
    
    NSArray* arrV = [NSLayoutConstraint constraintsWithVisualFormat:@"V:|-40-[redview(200)]-|" options:0 metrics:nil views:@{@"redview":redView}];
    [self.view addConstraints:arrV];
    
    NSArray* blueConstraintV = [NSLayoutConstraint constraintsWithVisualFormat:@"V:|[blueview(==redview)]-|" options:NSLayoutFormatAlignAllTop|NSLayoutFormatAlignAllBottom metrics:nil views:@{@"blueview":blueView,@"redview":redView}];
    [redView addConstraints:blueConstraintV];
    
    NSArray* blueConstraintH = [NSLayoutConstraint constraintsWithVisualFormat:@"|[blueview(==redview)]-|" options:NSLayoutFormatAlignAllLeft|NSLayoutFormatAlignAllRight metrics:nil views:@{@"blueview":blueView,@"redview":redView}];
    [redView addConstraints:blueConstraintH];
    
    NSLayoutConstraint* blueViewConstraintH = [NSLayoutConstraint constraintWithItem:blueView attribute:NSLayoutAttributeWidth relatedBy:NSLayoutRelationEqual toItem:redView attribute:NSLayoutAttributeWidth multiplier:0.5 constant:0];
    [redView addConstraint:blueViewConstraintH];
    NSLayoutConstraint* blueViewConstraintV = [NSLayoutConstraint constraintWithItem:blueView attribute:NSLayoutAttributeHeight relatedBy:NSLayoutRelationEqual toItem:redView attribute:NSLayoutAttributeHeight multiplier:0.5 constant:0];
    [redView addConstraint:blueViewConstraintV];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
