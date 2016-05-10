//
//  contentViewController.m
//  Navigation
//
//  Created by 陈培升 on 16/4/17.
//  Copyright © 2016年 陈培升. All rights reserved.
//

#import "contentViewController.h"
@interface contentViewController ()

@property (weak, nonatomic) IBOutlet UITextView *contentTv;

@property(nonatomic,copy)NSString*content;

@end

@implementation contentViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.contentTv.text = self.content;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)setstr:(NSString*)content
{
    self.content = content;
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
