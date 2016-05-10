//
//  RectView.m
//  GraphicsAPI
//
//  Created by 陈培升 on 16/5/8.
//  Copyright © 2016年 陈培升. All rights reserved.
//

#import "RectView.h"

@implementation RectView


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextFillRect(context, CGRectMake(100, 100, 50, 80));
    CGContextStrokeRect(context, CGRectMake(100, 250, 100, 100));
    
    CGContextMoveToPoint(context, 150, 100);
    CGContextAddLineToPoint(context, 250, 100);
    CGContextAddLineToPoint(context, 250, 200);
    CGContextAddLineToPoint(context, 150, 200);
    CGContextAddLineToPoint(context, 150, 100);
    //CGContextStrokePath(context);
    CGContextFillPath(context);
    CGContextSetLineCap(context, kCGLineCapRound);
}

@end
