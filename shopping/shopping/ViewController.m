//
//  ViewController.m
//  shopping
//
//  Created by 陈培升 on 16/4/18.
//  Copyright © 2016年 陈培升. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
//定义属性用于展示商品信息
@property (weak, nonatomic) IBOutlet UILabel *label;
@property (weak, nonatomic) IBOutlet UIImageView *imgView;
@property (weak, nonatomic) IBOutlet UILabel *price;
@property (weak, nonatomic) IBOutlet UILabel *count;
//定义一个模型属性用于接收外界传进来的模型
@property (weak, nonatomic) dictModel*model;
@end

@implementation ViewController
//实现模型接收函数
-(void)setM:(dictModel *)model{
    self.model = model;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    //设置控件安文本对齐
    [self.label setTextAlignment:1];
    [self.price setTextAlignment:1];
    [self.count setTextAlignment:1];
    //设置控件展示内容
    self.label.text = [NSString stringWithFormat:@"%@",self.model.name];
    self.price.text = [NSString stringWithFormat:@"价格：%d",self.model.price];
    self.count.text = [NSString stringWithFormat:@"销量：%d",self.model.count];
    self.imgView.image = [UIImage imageNamed:self.model.pic];    
}

@end
