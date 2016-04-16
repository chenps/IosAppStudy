//
//  ViewController.m
//  usePlist
//
//  Created by 陈培升 on 16/4/12.
//  Copyright © 2016年 陈培升. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //获取路径
    NSString* strPath = [[NSBundle mainBundle]pathForResource:@"student.plist" ofType:nil];
    //读取数据
    NSArray* arr = [NSArray arrayWithContentsOfFile:strPath];
    //解析数据
    for (NSDictionary*dict in arr) {
//        //解析字典name键
//        NSString *name1 = [dict objectForKey:@"name"];
//        NSLog(name1,nil);
//        //解析字典sex键
//        NSString *sex1 = dict[@"sex"];
//        NSLog(sex1,nil);
//        //解析age键
//        NSNumber *age1 = dict[@"age"];
//        NSLog(@"%@",age1);
        studentModel *model = [studentModel studentModelWithDict:dict];
    }
    
}


@end
