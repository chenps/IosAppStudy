//
//  ViewController.m
//  calculate
//
//  Created by 陈培升 on 16/4/8.
//  Copyright © 2016年 陈培升. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextField *input1;//第一个输入框
@property (weak, nonatomic) IBOutlet UITextField *input2;//第二个输入框
@property (weak, nonatomic) IBOutlet UIButton *add;//加法按钮
@property (weak, nonatomic) IBOutlet UIButton *sub;//减法按钮
@property (weak, nonatomic) IBOutlet UIButton *mul;//乘法按钮
@property (weak, nonatomic) IBOutlet UIButton *div;//除法按钮
@property (weak, nonatomic) IBOutlet UILabel *result;//返回结果输入框

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
/*
    //为加法添加响应函数
    [self.add addTarget:self action:@selector(add1) forControlEvents:UIControlEventTouchUpInside];
    //为减法添加响应函数
    [self.sub addTarget:self action:@selector(sub1) forControlEvents:UIControlEventTouchUpInside];
    //为乘法添加响应函数
    [self.mul addTarget:self action:@selector(mul1) forControlEvents:UIControlEventTouchUpInside];
    //为除法添加响应函数
    [self.div addTarget:self action:@selector(div1) forControlEvents:UIControlEventTouchUpInside];
*/
    self.input1.keyboardType = UIKeyboardTypeNumberPad;
    self.input2.keyboardType = UIKeyboardTypeNumberPad;
    
    //优化代码，把实现响应函数写成一个函数实现，减少工作量
    //首先为所有按钮添加响应函数
    [self.add addTarget:self action:@selector(calc:) forControlEvents:UIControlEventTouchUpInside];
    [self.sub addTarget:self action:@selector(calc:) forControlEvents:UIControlEventTouchUpInside];
    [self.mul addTarget:self action:@selector(calc:) forControlEvents:UIControlEventTouchUpInside];
    [self.div addTarget:self action:@selector(calc:) forControlEvents:UIControlEventTouchUpInside];
}


//实现加法响应函数
-(void)calc:(UIButton*)btn
{
    //获取输入
    NSString *str1 = self.input1.text;
    NSString *str2 = self.input2.text;
    float fresult = 0;
    //计算结果
    if ([btn.titleLabel.text isEqualToString:@"加"])
    {
        fresult = [str1 floatValue]+[str2 floatValue];
        self.result.text = [NSString stringWithFormat:@"%.02f",fresult];
    }
    else if ([btn.titleLabel.text isEqualToString:@"减"])
    {
        fresult = [str1 floatValue]-[str2 floatValue];
        self.result.text = [NSString stringWithFormat:@"%.02f",fresult];
    }
    else if ([btn.titleLabel.text isEqualToString:@"乘"])
    {
        fresult = [str1 floatValue]*[str2 floatValue];
        self.result.text = [NSString stringWithFormat:@"%.02f",fresult];
    }
    else if ([btn.titleLabel.text isEqualToString:@"除"])
    {
        if ([str2 floatValue]==0.00) {
            self.result.text = @"除数不能为0";
        }else{
            fresult = [str1 floatValue]/[str2 floatValue];
            self.result.text = [NSString stringWithFormat:@"%.02f",fresult];
        }
    }
}
/*
-(void)add1{
    //获取输入
    NSString *str1 = self.input1.text;
    NSString *str2 = self.input2.text;
    //结果计算
    float fresult = [str1 floatValue]+[str2 floatValue];
    //显示结果
    self.result.text = [NSString stringWithFormat:@"%.05f",fresult];
}
//实现减法响应函数
-(void)sub1{
    NSString *str1 = self.input1.text;
    NSString *str2 = self.input2.text;
    float fresult = [str1 floatValue]-[str2 floatValue];
    self.result.text = [NSString stringWithFormat:@"%.05f",fresult];
}
//实现乘法响应函数
-(void)mul1{
    NSString *str1 = self.input1.text;
    NSString *str2 = self.input2.text;
    float fresult = [str1 floatValue]*[str2 floatValue];
    self.result.text = [NSString stringWithFormat:@"%.05f",fresult];
}
//实现除法响应函数
-(void)div1{
    NSString *str1 = self.input1.text;
    NSString *str2 = self.input2.text;
    float fresult = [str1 floatValue]/[str2 floatValue];
    self.result.text = [NSString stringWithFormat:@"%.05f",fresult];
}
*/
    
@end
