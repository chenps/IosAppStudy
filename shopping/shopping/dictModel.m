//
//  dictModel.m
//  shopping
//
//  Created by 陈培升 on 16/4/18.
//  Copyright © 2016年 陈培升. All rights reserved.
//

#import "dictModel.h"

@implementation dictModel

-(instancetype)initWithDict:(NSDictionary*)dict{
    self = [self init];
    if (self) {
        //使用kvc的方式进行字典转模型
        [self setValuesForKeysWithDictionary:dict];
    }
    return self;
}

-(instancetype)dictModelWithDict:(NSDictionary*)dict{
    return [[dictModel alloc]initWithDict:dict];
}

@end
