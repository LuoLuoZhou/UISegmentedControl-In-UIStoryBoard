//
//  FirstTableViewController.m
//  UISegment
//
//  Created by zhy on 16/7/5.
//  Copyright © 2016年 zhy. All rights reserved.
//

#import "FirstTableViewController.h"

@interface FirstTableViewController ()

@end

@implementation FirstTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    self.tableView.rowHeight = 50;
//    self.tableView.alpha = 0.5;
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
   
}

#pragma mark - Table view data source
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 15;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"first" forIndexPath:indexPath];
    if (indexPath.row%3 == 1) {
        cell.imageView.image = [UIImage imageNamed:@"4.jpg"];
        cell.textLabel.text = @"图片四";
    }else if (indexPath.row%3 == 2){
        cell.imageView.image = [UIImage imageNamed:@"5.jpg"];
        cell.textLabel.text = @"图片五";
    }else{
        cell.imageView.image = [UIImage imageNamed:@"6.jpg"];
        cell.textLabel.text = @"图片六";
    }
//    ／／图片设置圆角
    cell.imageView.layer.masksToBounds = YES;
    cell.imageView.layer.cornerRadius = 15;
    
    return cell;
}



@end
