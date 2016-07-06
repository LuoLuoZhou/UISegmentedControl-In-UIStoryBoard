//
//  MoreTableViewController.h
//  UISegment
//
//  Created by zhy on 16/7/5.
//  Copyright © 2016年 zhy. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "FirstTableViewController.h"
#import "SecondTableViewController.h"
#import "ThirdTableViewController.h"
@interface MoreTableViewController : UIViewController
{
    int currentSegmentIndex;
}


@property (nonatomic,strong) FirstTableViewController *firstVC;
@property (nonatomic,strong) SecondTableViewController *secondVC;
@property (nonatomic,strong) ThirdTableViewController *thirdVC;

@property(nonatomic) int startupSegmentIndex;
@property (strong, nonatomic) IBOutlet UISegmentedControl *segmentedController;
- (IBAction)changeView:(UISegmentedControl *)sender;
@property (strong, nonatomic) IBOutlet UIView *bottonview;//contaiinerView




//根据点击的index设置要显示的controller
-(void) setBottomViewByIndex:(NSInteger)viewIndex;



// 是底部View自适应
- (void) fullfillToBottomView:(UIView *)subView ;



@end
