//
//  ViewController.m
//  useUIview
//
//  Created by 陈培升 on 16/4/10.
//  Copyright © 2016年 陈培升. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIView *gfView;
@property (weak, nonatomic) IBOutlet UIView *fView;
@property (weak, nonatomic) IBOutlet UIView *soView;
@property (weak, nonatomic) IBOutlet UIView *spView;
@property (weak, nonatomic) IBOutlet UIView *swView;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSLog(@"父view的frame是%@,bounds是%@,center是%@\n",NSStringFromCGRect(self.gfView.frame),NSStringFromCGRect(self.gfView.bounds),NSStringFromCGPoint(self.gfView.center));
    NSLog(@"子view的frame是%@,bounds是%@,center是%@\n",NSStringFromCGRect(self.fView.frame),NSStringFromCGRect(self.fView.bounds),NSStringFromCGPoint(self.fView.center));
    NSLog(@"孙橙色view的frame是%@,bounds是%@,center是%@\n",NSStringFromCGRect(self.soView.frame),NSStringFromCGRect(self.soView.bounds),NSStringFromCGPoint(self.soView.center));
    NSLog(@"孙粉色view的frame是%@,bounds是%@,center是%@\n",NSStringFromCGRect(self.spView.frame),NSStringFromCGRect(self.spView.bounds),NSStringFromCGPoint(self.spView.center));
    NSLog(@"孙白色view的frame是%@,bounds是%@,center是%@\n",NSStringFromCGRect(self.swView.frame),NSStringFromCGRect(self.swView.bounds),NSStringFromCGPoint(self.swView.center));
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
