//
//  ViewController.m
//  useKVC
//
//  Created by 陈培升 on 16/4/13.
//  Copyright © 2016年 陈培升. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    /*
    studentModel *student = [[studentModel alloc]init];
    studentModel *student2 = [[studentModel alloc]init];
    //使用直接复制访问属性
    student.name = @"张三";
    student.sex = @"男";
    student.age = 20;
    NSLog(@"%@,%@,%d\n",student.name,student.sex,student.age);
    
    //使用kvc设置类的属性
    [student setValue:@"张三丰" forKey:@"name"];
    [student setValue:@"男" forKey:@"sex"];
    [student setValue:@"25" forKey:@"age"];
    //使用kvc设置studentFriend的属性
    [student setValue:student2 forKey:@"studentFriend"];
    NSLog(@"%@,%@,%d\n",[student valueForKey:@"name"],[student valueForKey:@"sex"],[[student valueForKey:@"age"] intValue]);
    //使用kvc设置studentFriend的属性的name
    [student setValue:@"李四" forKeyPath:@"studentFriend.name"];
    NSLog(@"%@\n",[student valueForKeyPath:@"studentFriend.name"]);
     */
    NSString*strPath = [[NSBundle mainBundle]pathForResource:@"student.plist" ofType:nil];
    NSArray*arr = [NSArray arrayWithContentsOfFile:strPath];
    for (NSDictionary*dict in arr) {
        studentModel*model = [studentModel studentModelWithDict:dict];
        NSDictionary* dict2 = [model dictionaryWithValuesForKeys:@[@"name"]];
    }
}


@end
