//
//  studentModel.h
//  usePlist
//
//  Created by 陈培升 on 16/4/12.
//  Copyright © 2016年 陈培升. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface studentModel : NSObject
//姓名
@property(nonatomic,copy)NSString *name;
//性别
@property(nonatomic,copy)NSString *sex;
//年龄
@property(nonatomic,assign)int age;
//好朋友
@property(nonatomic,strong)studentModel* studentFriend;

-(instancetype)initWithDict:(NSDictionary*)dict;

+(instancetype)studentModelWithDict:(NSDictionary*)dict;
@end
