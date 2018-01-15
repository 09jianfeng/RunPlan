//
//  ChallengeTableViewController.m
//  RunPlan
//
//  Created by JFChen on 2017/12/23.
//  Copyright © 2017年 JFChen. All rights reserved.
//

#import "ChallengeTableViewController.h"
#import "ChallengeTableViewCell.h"
#import "ChallengPlanSetController.h"

@interface ChallengeTableViewController ()

@end

@implementation ChallengeTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
    
    self.tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
    self.title = @"打卡";
    
    [self.tableView registerNib:[UINib nibWithNibName:@"ChallengeTableViewCell" bundle:nil] forCellReuseIdentifier:@"ChallengeTableViewCell"];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 3;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"ChallengeTableViewCell" forIndexPath:indexPath];
    // Configure the cell...
    UILabel *labelTitle = [cell viewWithTag:101];
    UILabel *labelPlane = [cell viewWithTag:102];
    UIImageView *bgImage = [cell viewWithTag:103];
    UILabel *labelMoney = [cell viewWithTag:104];
    UILabel *labelTarget = [cell viewWithTag:105];
    
    switch (indexPath.row) {
        case 0:
        {
        }
            break;
        case 1:
        {
            labelTitle.text = @"帮派挑战计划";
            labelPlane.text = @"即将开放";
            labelTarget.text = @"完成帮派目标每日分钱";
            labelMoney.text = @"0";
            bgImage.image = [UIImage imageNamed:@"challenge_bangpai"];
        }
            break;
        case 2:
        {
            labelTitle.text = @"搭档挑战计划";
            labelPlane.text = @"即将开放";
            labelTarget.text = @"完成搭档目标每日分钱";
            labelMoney.text = @"0";
            bgImage.image = [UIImage imageNamed:@"challenge_dadang"];
        }
            break;
            
        default:
            break;
    }
    
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    ChallengPlanSetController *challengePlanCon = [[UIStoryboard storyboardWithName:@"Main" bundle:nil] instantiateViewControllerWithIdentifier:@"ChallengPlanSetController"];
    [self.navigationController pushViewController:challengePlanCon animated:YES];
}

@end
