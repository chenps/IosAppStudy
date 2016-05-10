//
//  ViewController.m
//  singerLayout
//
//  Created by 陈培升 on 16/4/30.
//  Copyright © 2016年 陈培升. All rights reserved.
//

#import "ViewController.h"
#import "dictModel.h"


#define Ymargin 40  //view 距离控制器view顶部的距离
#define viewYmargin 25  //view行距
#define viewWidth 80 //view的宽度
#define viewHeight 100 //view的高度
#define column 3 //列数
@interface ViewController ()
@property(nonatomic,strong)NSMutableArray*dictArr;

@end



@implementation ViewController

-(NSMutableArray*)dictArr{
    if (!_dictArr) {
        _dictArr = [NSMutableArray array];
        NSString* pathStr = [[NSBundle mainBundle]pathForResource:@"singList.plist" ofType:nil];
        NSArray* arr = [NSArray arrayWithContentsOfFile:pathStr];
        for (NSDictionary*dict in arr) {
            dictModel* model = [dictModel ModelInitWithDict:dict];
            [_dictArr addObject:model];
        }
    }
    return _dictArr;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSArray* arr = [[NSBundle mainBundle]loadNibNamed:@"singer" owner:nil options:nil];
    UIView* viewFromXib = [arr firstObject];
    [self.view addSubview:viewFromXib];
    
    /*
    int Xmargin = (self.view.frame.size.width - (viewWidth*column))/(column+1);
    
    for (int i=0; i<12; i++) {
        if (i<self.dictArr.count) {
            dictModel* model = self.dictArr[i];
            int iColumn = i%column;    //确定行
            int iRow =  i/column;       //确定列
            int x = Xmargin+(viewWidth+Xmargin)*iColumn;
            int y = Ymargin+(viewHeight+viewYmargin)*iRow;
            UIView* view = [[UIView alloc]initWithFrame:CGRectMake(x, y, viewWidth, viewHeight)];
            //  view.backgroundColor = [UIColor redColor];
            [self.view addSubview:view];
            [self addSubControl:view model:model];
        }
    }*/
}

-(void)addSubControl:(UIView*)uiViewParent model:(dictModel*)model1{
    
    //添加图片控件
    UIImageView* imgView = [[UIImageView alloc]initWithFrame:CGRectMake(0, 0, uiViewParent.frame.size.width, uiViewParent.frame.size.height*0.5)];
    imgView.image = [UIImage imageNamed:model1.pic];
    imgView.contentMode = UIViewContentModeScaleAspectFit;
    [uiViewParent addSubview:imgView];
    
    //添加label控件
    UILabel* label = [[UILabel alloc]initWithFrame:CGRectMake(0, 55, uiViewParent.frame.size.width, 20)];
    [label setText:model1.songname];
    [label setTextAlignment:NSTextAlignmentCenter];
    [label setFont:[UIFont systemFontOfSize:13]];
    [uiViewParent addSubview:label];
    
    //添加按钮
    UIButton* btn = [[UIButton alloc]initWithFrame:CGRectMake(0, 80, uiViewParent.frame.size.width, 20)];
    [btn setTitle:@"下载" forState:normal];
    [btn.titleLabel setFont:[UIFont systemFontOfSize:13]];
    [btn setBackgroundImage:[UIImage imageNamed:@"btnnormal.jpg"] forState:normal];
    [btn setBackgroundImage:[UIImage imageNamed:@"btnhighlight.jpg"] forState:UIControlStateHighlighted];
    [btn addTarget:self action:@selector(download) forControlEvents:UIControlEventTouchUpInside];
    [uiViewParent addSubview:btn];
}

-(void)download{
    UILabel*tipLabel = [[UILabel alloc]initWithFrame:CGRectMake(110, 400, 100, 30)];
    tipLabel.backgroundColor = [UIColor grayColor];
    [self.view addSubview:tipLabel];
    tipLabel.alpha = 1;
    tipLabel.text = @"下载成功";
    tipLabel.textAlignment = NSTextAlignmentCenter;
    
    
    //UIview动画函数，动画持续时间为2秒
    [UIView animateWithDuration:2.0 animations:^{
        tipLabel.alpha = 0;   //具体执行的动画
    } completion:^(BOOL finished) {
        [tipLabel removeFromSuperview];  //动画完成后执行的操作
    }];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
