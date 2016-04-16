//
//  studentModel.m
//  usePlist
//
//  Created by 陈培升 on 16/4/12.
//  Copyright © 2016年 陈培升. All rights reserved.
//

#import "studentModel.h"

@implementation studentModel

-(instancetype)initWithDict:(NSDictionary*)dict{
    //执行父类初始化函数
    self = [super init];
    //子类初始化
    if (self) {
        self.name = dict[@"name"];
        self.age = [dict[@"age"] intValue];
        self.sex = dict[@"sex"];
    }
    return self;
}

+(instancetype)studentModelWithDict:(NSDictionary*)dict{
    return [[studentModel alloc]initWithDict:dict];
}

@end
