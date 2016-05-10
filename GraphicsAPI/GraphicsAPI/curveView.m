//
//  curveView.m
//  GraphicsAPI
//
//  Created by 陈培升 on 16/5/8.
//  Copyright © 2016年 陈培升. All rights reserved.
//

#import "curveView.h"

@implementation curveView

// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextMoveToPoint(context, 10, 200);
    //CGContextAddQuadCurveToPoint(context, 100, 0, 200, 200);
    CGContextAddCurveToPoint(context, 100, 100, 200, 300, 300, 200);
    CGContextStrokePath(context);
}

@end
