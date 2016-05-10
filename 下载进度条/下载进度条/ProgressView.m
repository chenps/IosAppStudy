//
//  ProgressView.m
//  下载进度条
//
//  Created by 陈培升 on 16/5/9.
//  Copyright © 2016年 陈培升. All rights reserved.
//

#import "ProgressView.h"

@interface ProgressView ()

@property (strong,nonatomic) CALayer *progressLayer;
@property (assign,nonatomic) CGFloat currentViewWidth;

@end

@implementation ProgressView



- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        self.progressLayer                 = [CALayer layer];
        self.progressLayer.frame           = CGRectMake(0, 0, 0, frame.size.height);
        [self.layer addSublayer:self.progressLayer];
        
        //存储当前view的宽度值
        self.currentViewWidth = frame.size.width;
    }
    return self;
}

#pragma mark -重写seter和geter方法
@synthesize progress = _progress;
-(void)setProgress:(CGFloat)progress{
    _progress = progress;
    if (progress <= 0) {
        self.progressLayer.frame = CGRectMake(0, 0, 0, self.frame.size.height);
    }else if(progress <= 1){
        self.progressLayer.frame = CGRectMake(0, 0,
                                              progress * self.currentViewWidth,
                                              self.frame.size.height);
    }else{
        self.progressLayer.frame = CGRectMake(0, 0, self.currentViewWidth,
                                              self.frame.size.height);
    }
}

-(CGFloat)progress{
    return _progress;
}


@synthesize color = _color;
-(void)setColor:(UIColor *)color{
    _color = color;
    self.progressLayer.backgroundColor = self.color.CGColor;
}

-(UIColor *)color{
    return _color;
}

@end
