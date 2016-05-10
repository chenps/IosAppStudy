//
//  ViewController.m
//  animation1
//
//  Created by 陈培升 on 16/5/8.
//  Copyright © 2016年 陈培升. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIView *redView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
//    [UIView beginAnimations:nil context:nil];
//    
//    [UIView setAnimationDuration:2];
//    
//    [UIView setAnimationRepeatAutoreverses:YES];
//    
//    [UIView setAnimationTransition:UIViewAnimationTransitionFlipFromLeft forView:self.redView cache:YES];
//    
//    [UIView commitAnimations];
    
    //演示块动画
//    [UIView animateWithDuration:2.0 delay:0 usingSpringWithDamping:0.1 initialSpringVelocity:1 options:UIViewAnimationOptionCurveEaseInOut    animations:^{
//        self.redView.alpha = 0;
//    } completion:^(BOOL finished) {
//        [self.redView removeFromSuperview];
//    }];
    [UIView animateKeyframesWithDuration:3 delay:0 options:UIViewKeyframeAnimationOptionCalculationModeLinear animations:^{
        [UIView addKeyframeWithRelativeStartTime:0 relativeDuration:0 animations:^{
            self.redView.frame = CGRectMake(0, 0, 50, 50);
        }];
        [UIView addKeyframeWithRelativeStartTime:0 relativeDuration:0.5 animations:^{
            self.redView.alpha = 0;
        }];
    } completion:^(BOOL finished) {
        [self.redView removeFromSuperview];
    }];

    
}

- (void)test{
    [UIView beginAnimations:nil context:nil];
    //self.redView.frame = CGRectMake(0, 0, 100, 100);
    
    [UIView setAnimationDelegate:self];//设置动画代理
    //设置动画开始和结束时的响应函数
    [UIView setAnimationWillStartSelector:@selector(animationWillStart:context:)];
    [UIView setAnimationDidStopSelector:@selector(animationDidStop:finished:context:)];
    
    //设置运行时长
    //[UIView setAnimationDuration:3];
    //设置运行延迟时间
    //[UIView setAnimationDelay:2];
    //设置动画重复次数
    //[UIView setAnimationRepeatCount:3];
    //设置动画节奏
    [UIView setAnimationCurve:UIViewAnimationCurveEaseInOut];
    
    self.redView.frame = CGRectMake(0, 0, 240, 128);
    
    [UIView commitAnimations];

}

//动画开始运行时的代理函数
- (void)animationWillStart:(NSString *)animationID context:(void *)context{
    NSLog(@"start");
}

//动画结束时的代理函数
- (void)animationDidStop:(NSString *)animationID finished:(NSNumber *)finished context:(void *)context{
    NSLog(@"end");
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
