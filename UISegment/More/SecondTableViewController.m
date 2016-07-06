//
//  SecondTableViewController.m
//  UISegment
//
//  Created by zhy on 16/7/5.
//  Copyright © 2016年 zhy. All rights reserved.
//

#import "SecondTableViewController.h"

@interface SecondTableViewController ()

@end

@implementation SecondTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
   

}


#pragma mark - Table view data source
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 15;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"second" forIndexPath:indexPath];
    
    if (indexPath.row%3 == 0) {
        cell.textLabel.text = @"想要了解更多内容";
        cell.detailTextLabel.text = @">";
    }else if (indexPath.row%3 == 1){
        cell.textLabel.text = @"详情关注博客";
        cell.detailTextLabel.text = @">";
    }else{
        cell.textLabel.text = @"博客地址:http://blog.csdn.net/dandelion9";
        cell.detailTextLabel.text = @">";

    }
    
    return cell;

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
