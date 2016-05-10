//
//  dictModel.h
//  singerLayout
//
//  Created by 陈培升 on 16/4/30.
//  Copyright © 2016年 陈培升. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface dictModel : UIViewController

@property(nonatomic,copy)NSString* name;
@property(nonatomic,copy)NSString* songname;
@property(nonatomic,copy)NSString* pic;

-(instancetype)initWithDict:(NSDictionary*)dict;

+(instancetype)ModelInitWithDict:(NSDictionary*)dict;

@end
