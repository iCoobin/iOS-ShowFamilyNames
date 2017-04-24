//
//  FontTableViewCell.h
//  Font
//
//  Created by Kevin on 2017/4/24.
//  Copyright © 2017年 Kevin. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FontTableViewCell : UITableViewCell

+ (id)cellWithTableView:(UITableView *)tableView indexPath:(NSIndexPath*)indexPath model:(id)model;

@end
