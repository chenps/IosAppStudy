//
//  ViewController.m
//  transform
//
//  Created by 陈培升 on 16/4/12.
//  Copyright © 2016年 陈培升. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *pic;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (IBAction)move:(UIButton *)sender {
//    if (sender.tag==10) {
//        CGRect rect = self.pic.frame;
//        rect.origin.y -= 10;
//        self.pic.frame = rect;
//    }
//    else if (sender.tag==20){
//        CGRect rect = self.pic.frame;
//        rect.origin.y += 10;
//        self.pic.frame = rect;
//    }
//    else if (sender.tag==30){
//        CGRect rect = self.pic.frame;
//        rect.origin.x -= 10;
//        self.pic.frame = rect;
//    }
//    else if (sender.tag==40){
//        CGRect rect = self.pic.frame;
//        rect.origin.x += 10;
//        self.pic.frame = rect;
//    }
    CGRect rect = self.pic.frame;
    switch (sender.tag) {
        case 10:
            rect.origin.y -= 10;
            break;
        case 20:
            rect.origin.y += 10;
            break;
        case 30:
            rect.origin.x -= 10;
            break;
        case 40:
            rect.origin.x += 10;
            break;
        default:
            break;
    }
    self.pic.frame = rect;
}

- (IBAction)zoom:(UIButton *)sender {
/*使用frame调整大小
//    CGRect rect = self.pic.frame;
//    if (sender.tag==50) {
//        rect.size.height += 10;
//        rect.size.width += 10;
//    }
//    else if (sender.tag==60){
//        rect.size.height -= 10;
//        rect.size.width -= 10;
//    }
//    self.pic.frame = rect;
*/
    //使用bounds调整大小
//    CGRect rect = self.pic.bounds;
//    if (sender.tag==50) {
//        rect.size.height += 10;
//        rect.size.width += 10;
//    }
//    else if (sender.tag==60){
//        rect.size.height -= 10;
//        rect.size.width -= 10;
//    }
//    self.pic.bounds = rect;
    //使用transform调整大小
        if (sender.tag==50) {
            self.pic.transform = CGAffineTransformScale(self.pic.transform, 1.2, 1.2);
        }
        else if (sender.tag==60){
            self.pic.transform = CGAffineTransformScale(self.pic.transform, 0.8, 0.8);
        }

}
- (IBAction)rotate:(UIButton *)sender {
    if (sender.tag==70) {
        self.pic.transform = CGAffineTransformRotate(self.pic.transform, M_PI_2);
    }
    else if (sender.tag==80){
        self.pic.transform = CGAffineTransformRotate(self.pic.transform, -M_PI_2);
    }
}

@end
