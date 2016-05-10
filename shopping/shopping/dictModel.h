//
//  dictModel.h
//  shopping
//
//  Created by 陈培升 on 16/4/18.
//  Copyright © 2016年 陈培升. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface dictModel : NSObject
//定义字典装模型属性（模型属性需要和被转化的字典的key相同，可以多，不可以少）
@property(nonatomic,copy)NSString*name;
@property(nonatomic,assign)int price;
@property(nonatomic,assign)int count;
@property(nonatomic,copy)NSString*pic;
//定义字典转模型函数
-(instancetype)initWithDict:(NSDictionary*)dict;
-(instancetype)dictModelWithDict:(NSDictionary*)dict;
@end
