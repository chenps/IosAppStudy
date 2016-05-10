//
//  ViewController.m
//  下载进度条
//
//  Created by 陈培升 on 16/5/9.
//  Copyright © 2016年 陈培升. All rights reserved.
//

#import "ViewController.h"
#import "ProgressView.h"

@interface ViewController ()

@property (nonatomic,strong) ProgressView *progressView;
@property (nonatomic,strong) NSTimer *timer;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.progressView = [[ProgressView alloc]initWithFrame:CGRectMake(20, 20, 290, 3)];
    self.progressView.color = [UIColor yellowColor];
    [self.view addSubview:self.progressView];
    
    self.progressView.layer.borderWidth = 1.f;
    [self performSelector:@selector(layerAnimation)
               withObject:nil
               afterDelay:3.f];
    
    //创建定时器，每一秒执行一回
    self.timer = [NSTimer scheduledTimerWithTimeInterval:1
                                                  target:self
                                                selector:@selector(layerAnimation)
                                                userInfo:nil
                                                 repeats:YES];
}


- (void)layerAnimation{
    
    //随机获取0%～100%的值
    self.progressView.progress = arc4random() % 100 / 100.f;
}
@end
