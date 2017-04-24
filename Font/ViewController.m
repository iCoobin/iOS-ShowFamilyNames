//
//  ViewController.m
//  Font
//
//  Created by Kevin on 2017/4/24.
//  Copyright © 2017年 Kevin. All rights reserved.
//

#import "ViewController.h"
#import "FontTableViewCell.h"

@interface ViewController ()<UITableViewDelegate,UITableViewDataSource>

@property (nonatomic,strong) UITableView *tableView;

@property (nonatomic,strong) NSArray *dataSource;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSMutableArray *dataSource = [NSMutableArray array];
    NSArray *names = [UIFont familyNames];
    for (NSString *name in names) {
        NSLog(@"%@",name);
        
        NSArray *subNames = [UIFont fontNamesForFamilyName:name];
        for (NSString *subName in subNames) {
            [dataSource addObject:subName];
        }
    }
    _dataSource = [dataSource copy];
    
    _tableView = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStylePlain];
    [_tableView registerClass:[FontTableViewCell class] forCellReuseIdentifier:@"FontTableViewCell"];
    _tableView.delegate = self;
    _tableView.dataSource = self;
    _tableView.rowHeight = 50;
    [self.view addSubview:_tableView];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.dataSource.count;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    return [FontTableViewCell cellWithTableView:tableView indexPath:indexPath model:_dataSource[indexPath.row]];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
