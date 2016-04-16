//
//  ViewController.m
//  picBroswer
//
//  Created by 陈培升 on 16/4/14.
//  Copyright © 2016年 陈培升. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property(nonatomic,strong)NSMutableArray*allArr;

@property(nonatomic,strong)UILabel*titleLbel;

@property(nonatomic,strong)UIImageView*imgView;

@property(nonatomic,strong)UIButton*btnBack;

@property(nonatomic,strong)UIButton*btnNext;

@property(nonatomic,assign)int Index;

@end



@implementation ViewController

-(NSMutableArray*)allArr
{
    if (!_allArr){
        _allArr = [NSMutableArray array];
        NSString* strPath = [[NSBundle mainBundle]pathForResource:@"picList.plist" ofType:nil];
        NSArray* array = [NSArray arrayWithContentsOfFile:strPath];
        for (NSDictionary*dict in array) {
            Model* model = [Model modelInitWithDict:dict];
            [_allArr addObject:model];
        }
    }
    return _allArr;
}

-(UILabel*)titleLbel
{
    if (!_titleLbel) {
        _titleLbel = [[UILabel alloc]initWithFrame:CGRectMake(60, 60, 200, 50)];
        _titleLbel.backgroundColor = [UIColor blueColor];
        [self.view addSubview:_titleLbel];
    }
    return _titleLbel;
}


- (void)viewDidLoad {
    [super viewDidLoad];
    self.titleLbel;
}

@end
