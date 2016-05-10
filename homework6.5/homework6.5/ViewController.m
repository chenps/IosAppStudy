//
//  ViewController.m
//  homework6.5
//
//  Created by 陈培升 on 16/5/4.
//  Copyright © 2016年 陈培升. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UILabel *content;

@property (copy, nonatomic) NSString *str;

@end

@implementation ViewController

- (void)setStrCon:(NSString*)contText{
    self.str = contText;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.content.text = self.str;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
