//
//  Model.h
//  picBroswer
//
//  Created by 陈培升 on 16/4/14.
//  Copyright © 2016年 陈培升. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Model : NSObject

@property(nonatomic,copy)NSString*name;
@property(nonatomic,copy)NSString*songname;
@property(nonatomic,copy)NSString*pic;
-(instancetype)initWithDict:(NSDictionary*)dict;
+(instancetype)modelInitWithDict:(NSDictionary*)dict;

@end
