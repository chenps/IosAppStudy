//
//  CircleView.m
//  GraphicsAPI
//
//  Created by 陈培升 on 16/5/8.
//  Copyright © 2016年 陈培升. All rights reserved.
//

#import "CircleView.h"

@implementation CircleView


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextMoveToPoint(context, 200, 200);
    CGContextAddArc(context, 200, 200, 50, 0, 1.57, 0);
    CGContextFillPath(context);
    
    CGContextStrokeEllipseInRect(context, CGRectMake(260, 260, 100, 100));
    
}


@end
