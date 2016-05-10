//
//  ProgressView.h
//  下载进度条
//
//  Created by 陈培升 on 16/5/9.
//  Copyright © 2016年 陈培升. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ProgressView : UIView

@property (nonatomic,assign) CGFloat progress;    //进度参数（取值范围为0％～100%）
@property (nonatomic,strong) UIColor *color;      //进度条颜色参数


@end
