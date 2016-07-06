//
//  OneTableViewController.m
//  UISegment
//
//  Created by zhy on 16/7/5.
//  Copyright © 2016年 zhy. All rights reserved.
//

#import "OneTableViewController.h"
#import "ThirdTWOCell.h"
@interface OneTableViewController ()<UITableViewDataSource,UITableViewDelegate>

@property (nonatomic,strong) NSMutableArray *titleArray;
@property (nonatomic,strong) NSArray *contentArray;


@end

@implementation OneTableViewController
@synthesize segmented,currentIndex,table,titleArray,contentArray;


- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    
    
//         设置指定段的宽度  ----大小自己控制
        [segmented setWidth:200 forSegmentAtIndex:0];
//        设置颜色--一般不用
        segmented.backgroundColor = [UIColor orangeColor];
//        设置背景色调
        segmented.tintColor = [UIColor whiteColor];

//        设置字体大小--字体大小 根据属性字符串来修改
    NSDictionary *dict = @{NSFontAttributeName:[UIFont systemFontOfSize:20],NSForegroundColorAttributeName:[UIColor yellowColor]};
    [segmented setTitleTextAttributes:dict forState:UIControlStateNormal];

    
    
    
    currentIndex = 0;
   [segmented setSelectedSegmentIndex:0];
    table.dataSource = self;
    table.delegate = self;
    
    
    
    titleArray = [NSMutableArray new];
    for (int i = 0; i < 15; i++) {
        NSString *str = [NSString stringWithFormat:@"title_%d",i+1];
        [titleArray addObject:str];
    }
    contentArray = [NSArray new];
    contentArray = @[@"我会像以前一样，看着来往的车子啊，我们的距离在眉间皱了下，迅速还原成路人的样子啊，越有礼貌我越害怕，绅士要放得下。----->薛之谦《绅士》",@"简单点说话的方式简单点\n递进的情绪请省略\n你又不是演员\n别设计那些情节\n没意见我只想看看你怎么圆\n你难过的太表面想每天敷的演员\n观众一眼能看见\n该配合你演出的我视而不见\n在逼一个最爱你的人即兴表演\n什么时候我们收起了底线\n顺应时代的改变看那些拙劣的表演\n可你曾经那么爱我干嘛演出细节\n我该变成什么样子才能延缓厌倦\n原来当爱放下防备后的这些那些\n才是考验\n没意见你想怎样我都随便\n你演技也有限\n又不用说感言\n分开就平淡些\n-----薛之谦《演员》",@"神经病歌手薛之谦\n 🐱🐱🐱🐱🐱🐱",@"你应该也遇见过'熟人的恶意'，就是在公众场合令你尴尬，说让你不舒服的话。那一般只有这几种原因，生来娘胎的恶毒，看不了朋友比自己过得好，想通过打压你来显示自己好，情商低，嘴贱。不是把人往坏处想，真的就这么几种可能性。如果你你也遇到过这样的‘朋友’，尽量离远点。",@"111",@"2222",@"你停在了这条我们熟悉的街\n把你准备好的台词全念一遍\n我还在逞强 说着谎\n也没能力遮挡 你去的方向\n至少分开的时候我落落大方\n我后来都会选择绕过那条街\n又多希望在另一条街能遇见\n思念在逞强 不肯忘\n怪我没能力跟随 你去的方向\n若越爱越被动 越要落落大方\n你还要我怎样 要怎样\n你突然来的短信就够我悲伤\n我没能力遗忘 你不用提醒我\n哪怕结局就这样\n我还能怎样 能怎样\n最后还不是落得情人的立场\n你从来不会想 我何必这样\n我慢慢的回到自己的生活圈\n也开始可以接触新的人选\n-----薛之谦《你还要我怎样》",@"4444",@"5555",@"",@"",@"",@"",@"",@""];
    
    
    
}



- (IBAction)segmentedClick:(UISegmentedControl *)sender {
    currentIndex = sender.selectedSegmentIndex;
    [segmented setSelectedSegmentIndex:currentIndex];
    [self.table reloadData];
    
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 15;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    if (currentIndex == 0) {
        table.rowHeight = 50;
        UITableViewCell *cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cell"];
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
        
    }else if (currentIndex == 1){
        
         UITableViewCell *cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:@"cell2"];
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
    }else{
        //预计高度为88
        table.estimatedRowHeight = 88.0f;
        //自适应高度
        table.rowHeight = UITableViewAutomaticDimension;
        
        
        ThirdTWOCell *cell = [table dequeueReusableCellWithIdentifier:@"cell3"];
        if (cell == nil) {
            cell = [[[NSBundle mainBundle]loadNibNamed:@"ThirdTWOCell" owner:self options:nil]lastObject];
        }
        cell.title.text = titleArray[indexPath.row];
        cell.title.textColor = [UIColor purpleColor];
        cell.content.text = contentArray[indexPath.row];
        cell.content.textColor = [UIColor blueColor];
        return cell;
    }
}











@end
