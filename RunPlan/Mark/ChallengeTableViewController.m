//
//  ChallengeTableViewController.m
//  RunPlan
//
//  Created by JFChen on 2017/12/23.
//  Copyright © 2017年 JFChen. All rights reserved.
//

#import "ChallengeTableViewController.h"
#import "ChallengeTableViewCell.h"

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

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
