//
//  LinesView.m
//  GraphicsAPI
//
//  Created by 陈培升 on 16/5/7.
//  Copyright © 2016年 陈培升. All rights reserved.
//

#import "LinesView.h"

@implementation LinesView


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextMoveToPoint(context, 100, 100);
    CGContextAddLineToPoint(context, 200, 100);
    CGContextAddLineToPoint(context, 200, 300);
    CGContextStrokePath(context);
    
}

@end
