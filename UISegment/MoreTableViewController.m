//
//  MoreTableViewController.m
//  UISegment
//
//  Created by zhy on 16/7/5.
//  Copyright © 2016年 zhy. All rights reserved.
//

#import "MoreTableViewController.h"

@interface MoreTableViewController ()

@end

@implementation MoreTableViewController
@synthesize firstVC,secondVC,thirdVC,segmentedController,startupSegmentIndex;
- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    firstVC  = [storyboard instantiateViewControllerWithIdentifier:@"FirstTableViewController"];
    secondVC = [storyboard instantiateViewControllerWithIdentifier:@"SecondTableViewController"];
    thirdVC = [storyboard instantiateViewControllerWithIdentifier:@"ThirdTableViewController"];
    [self setBottomViewByIndex:0];

    
    
}

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    if(startupSegmentIndex != 0){
        [self setBottomViewByIndex:startupSegmentIndex];
        segmentedController.selectedSegmentIndex = startupSegmentIndex;
        startupSegmentIndex = 0;
    }
}


-(void)setBottomViewByIndex:(NSInteger)viewIndex{
    switch(currentSegmentIndex){
        case 0:
            [firstVC  removeFromParentViewController];
            [firstVC.view removeFromSuperview];
            break;
        case 1:
            [secondVC removeFromParentViewController];
            [secondVC.view removeFromSuperview];
            
            break;
        case 2:
            [thirdVC removeFromParentViewController];
            [thirdVC.view removeFromSuperview];
            
            break;
        default:
            
            break;
    }
    switch (viewIndex) {
        case 0:
            [self addChildViewController:firstVC];
            [self fullfillToBottomView:firstVC.view];
            currentSegmentIndex = 0;
            break;
        case 1:
            [self addChildViewController:secondVC];
            
            [self fullfillToBottomView:secondVC.view];
            currentSegmentIndex = 1;
            break;
        case 2:
            [self addChildViewController:thirdVC];
            
            [self fullfillToBottomView:thirdVC.view];
            currentSegmentIndex = 1;
            break;

        default:
            break;
    }

}


- (IBAction)changeView:(UISegmentedControl *)sender {
     [self setBottomViewByIndex:[sender selectedSegmentIndex]];
}


- (void) fullfillToBottomView:(UIView *)subView {
    [self.bottonview addSubview:subView];
    subView.translatesAutoresizingMaskIntoConstraints = NO;
    [self.bottonview addConstraint:[NSLayoutConstraint constraintWithItem:subView attribute:NSLayoutAttributeHeight relatedBy:NSLayoutRelationEqual toItem:self.bottonview attribute:NSLayoutAttributeHeight multiplier:1.0 constant:0]];
    [self.bottonview addConstraint:[NSLayoutConstraint constraintWithItem:subView attribute:NSLayoutAttributeWidth relatedBy:NSLayoutRelationEqual toItem:self.bottonview attribute:NSLayoutAttributeWidth multiplier:1.0 constant:0]];
    [self.bottonview addConstraint:[NSLayoutConstraint constraintWithItem:subView attribute:NSLayoutAttributeCenterX relatedBy:NSLayoutRelationEqual toItem:self.bottonview attribute:NSLayoutAttributeCenterX multiplier:1.0 constant:0]];
    [self.bottonview addConstraint:[NSLayoutConstraint constraintWithItem:subView attribute:NSLayoutAttributeCenterY relatedBy:NSLayoutRelationEqual toItem:self.bottonview attribute:NSLayoutAttributeCenterY multiplier:1.0 constant:0]];
}





- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
