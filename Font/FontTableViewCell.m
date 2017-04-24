//
//  FontTableViewCell.m
//  Font
//
//  Created by Kevin on 2017/4/24.
//  Copyright © 2017年 Kevin. All rights reserved.
//

#import "FontTableViewCell.h"

@interface FontTableViewCell ()

@property (nonatomic,strong) UILabel *fontLabel;

@end

@implementation FontTableViewCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        [self makeUI];
    }
    return self;
}


- (void)makeUI{
    
    _fontLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 15, [UIScreen mainScreen].bounds.size.width, 15)];
    _fontLabel.textAlignment = NSTextAlignmentCenter;
    [self.contentView addSubview:_fontLabel];
    
}

+ (id)cellWithTableView:(UITableView *)tableView indexPath:(NSIndexPath*)indexPath model:(id)model{
    FontTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:NSStringFromClass(self) forIndexPath:indexPath];
    [cell refreshUI:model];
    return cell;
}

- (void)refreshUI:(id)model{
    _fontLabel.text = [NSString stringWithFormat:@"哈哈哈:%@",model];
    _fontLabel.font = [UIFont fontWithName:model size:15];
}

@end
