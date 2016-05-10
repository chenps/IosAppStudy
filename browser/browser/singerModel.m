//
//  singerModel.m
//  browser
//
//  Created by 陈培升 on 16/4/17.
//  Copyright © 2016年 陈培升. All rights reserved.
//

#import "singerModel.h"

@implementation singerModel


-(instancetype)initWithDict:(NSDictionary*)dict
{
    self = [self init];
    
    if (self) {
        //使用kvc的方式进行字典转模型初始化
        [self setValuesForKeysWithDictionary:dict];
    }
    
    return self;
}


+(instancetype)singerModelWithDict:(NSDictionary*)dict{
    //定义类方法进行字典转模型
    return [[singerModel alloc]initWithDict:dict];
}

@end
