//
//  Model.m
//  picBroswer
//
//  Created by 陈培升 on 16/4/14.
//  Copyright © 2016年 陈培升. All rights reserved.
//

#import "Model.h"

@implementation Model
-(instancetype)initWithDict:(NSDictionary*)dict
{
    self = [self init];
    
    if (self) {
        [self setValuesForKeysWithDictionary:dict];
    }
    
    return self;
}

+(instancetype)modelInitWithDict:(NSDictionary*)dict
{
    return [[Model alloc]initWithDict:dict];
}

@end
