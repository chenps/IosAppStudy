//
//  ViewController.m
//  test
//
//  Created by 陈培升 on 16/4/12.
//  Copyright © 2016年 陈培升. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *imgView;
@property (weak, nonatomic) IBOutlet UISlider *imgSlide;
@property (weak, nonatomic) IBOutlet UISwitch *slideSwitch;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //创建UIImageView
    UIImageView* img1 = [[UIImageView alloc]initWithFrame:CGRectMake(60, 60, 100, 100)];
    //指定图片
    [img1 setImage:[UIImage imageNamed:@"QQ20160412-2@2x.jpg"]];
    [img1 setContentMode:UIViewContentModeScaleAspectFit];
    //设置背景颜色
    [img1 setBackgroundColor:[UIColor blueColor]];
    //添加到view中
    [self.view addSubview:img1];
    
    [self.slideSwitch addTarget:self action:@selector(sliSwitch) forControlEvents:UIControlEventTouchUpInside];
    [self.imgSlide addTarget:self action:@selector(slideChange) forControlEvents:UIControlEventValueChanged];
}


-(void)sliSwitch{
    if (self.slideSwitch.isOn) {
        self.imgSlide.enabled = YES;
    }
    else{
        self.imgSlide.enabled = NO;
    }
}

-(void)slideChange{
    self.imgView.alpha = self.imgSlide.value/100;
}

@end
