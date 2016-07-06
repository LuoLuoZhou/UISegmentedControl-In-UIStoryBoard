//
//  OneTableViewController.h
//  UISegment
//
//  Created by zhy on 16/7/5.
//  Copyright © 2016年 zhy. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface OneTableViewController : UIViewController
@property (nonatomic,assign) NSInteger currentIndex;
@property (strong, nonatomic) IBOutlet UISegmentedControl *segmented;

- (IBAction)segmentedClick:(UISegmentedControl *)sender;

@property (strong, nonatomic) IBOutlet UITableView *table;


@end
