//
//  singerModel.h
//  browser
//
//  Created by 陈培升 on 16/4/17.
//  Copyright © 2016年 陈培升. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface singerModel : NSObject
//定义模型类属性（字典模型类属性必须和字典属性相吻合，可以有字典没有的属性，但字典有的属性模型必须有）
@property(nonatomic,copy)NSString*name;
@property(nonatomic,copy)NSString*songname;
@property(nonatomic,copy)NSString*pic;
//定义字典转模型初始化函数
-(instancetype)initWithDict:(NSDictionary*)dict;
+(instancetype)singerModelWithDict:(NSDictionary*)dict;
@end
