//
//  TableViewCell.h
//  shopping
//
//  Created by 陈培升 on 16/4/18.
//  Copyright © 2016年 陈培升. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TableViewCell : UITableViewCell
//定义cell属性，用于展示商品的内容
@property (weak, nonatomic) IBOutlet UILabel *label;
@property (weak, nonatomic) IBOutlet UILabel *price;
@property (weak, nonatomic) IBOutlet UILabel *count;
@property (weak, nonatomic) IBOutlet UIImageView *imgView;

@end
