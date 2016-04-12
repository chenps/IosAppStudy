//
//  ViewController.m
//  useUIButton
//
//  Created by 陈培升 on 16/4/10.
//  Copyright © 2016年 陈培升. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIButton *selected;
@property (weak, nonatomic) IBOutlet UIButton *disabled;
@property (weak, nonatomic) IBOutlet UIButton *normal;
@property (weak, nonatomic) IBOutlet UIButton *button1;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.selected addTarget:self action:@selector(selState) forControlEvents:UIControlEventTouchUpInside];
    [self.disabled addTarget:self action:@selector(disState) forControlEvents:UIControlEventTouchUpInside];
    [self.normal addTarget:self action:@selector(norState) forControlEvents:UIControlEventTouchUpInside];
}

-(void)selState{
    [self.button1 setEnabled:true];
    [self.button1 setSelected:true];
}
-(void)disState{
    [self.button1 setSelected:false];
    [self.button1 setEnabled:false];
}
-(void)norState{
    [self.button1 setEnabled:true];
    [self.button1 setSelected:false];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
