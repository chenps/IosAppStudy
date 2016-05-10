//
//  ViewController.m
//  CALayer1
//
//  Created by 陈培升 on 16/5/9.
//  Copyright © 2016年 陈培升. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIView *redView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.redView.layer.borderWidth = 10;
    self.redView.layer.borderColor = [UIColor blueColor].CGColor;
    
    //设置阴影
    self.redView.layer.shadowColor = [UIColor grayColor].CGColor;
    self.redView.layer.shadowOffset = CGSizeMake(10, 10);
    self.redView.layer.shadowOpacity = 1;
    
    //圆角属性
    self.redView.layer.cornerRadius = 30;
    
    //设置内容属性
    self.redView.layer.contents = (id)[UIImage imageNamed:@"1.jpg"].CGImage;
    //self.redView.clipsToBounds = YES;
    self.redView.layer.masksToBounds = YES;//使用此属性可以将图片所在layer之外的部分裁剪掉，这样也会同时裁剪掉阴影。
    //如果既需要阴影也要圆角，那么可以将图片切为圆角；
    
    self.redView.layer.position = CGPointMake(75, 75);
    self.redView.layer.anchorPoint = CGPointMake(0, 0);//设置锚点
}


- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    self.redView.layer.position = CGPointMake(100, 100);
    self.redView.layer.bounds = CGRectMake(0, 0, 200, 200);
    self.redView.layer.transform = CATransform3DTranslate(self.redView.layer.transform, 30, 0, 0);
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
