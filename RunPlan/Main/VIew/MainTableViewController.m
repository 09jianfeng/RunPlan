//
//  MainTableViewController.m
//  RunPlan
//
//  Created by JFChen on 2017/12/23.
//  Copyright © 2017年 JFChen. All rights reserved.
//

#import "MainTableViewController.h"
#import "MyProgressView.h"
#import "MainTableViewCell.h"
#import "MainTableViewCellSpeci.h"
#import "ImagWebViewController.h"

@interface MainTableViewController ()
@property (weak, nonatomic) IBOutlet UIButton *btnJoinChallenge;
@property (weak, nonatomic) IBOutlet MyProgressView *progressBGView;
@end

@implementation MainTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
    
    _btnJoinChallenge.layer.cornerRadius = 20.0;
    _btnJoinChallenge.layer.masksToBounds = YES;
    
    [self.tableView registerNib:[UINib nibWithNibName:@"MainTableViewCell" bundle:nil] forCellReuseIdentifier:@"MainTableViewCell"];
    [self.tableView registerNib:[UINib nibWithNibName:@"MainTableViewCellSpeci" bundle:nil] forCellReuseIdentifier:@"MainTableViewCellSpeci"];
    self.edgesForExtendedLayout = UIRectEdgeNone;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - touchEvent

- (IBAction)btnJoinChallengePressed:(id)sender {

}

- (IBAction)btnRulePressed:(id)sender {
    UIImage *image = [UIImage imageNamed:@"active_rule"];
    ImagWebViewController *wevViewCon = [ImagWebViewController new];
    wevViewCon.image = image;
    [self.navigationController pushViewController:wevViewCon animated:YES];
}

- (void)decompressImage:(UIImage *)image
{
    UIGraphicsBeginImageContext(CGSizeMake(1, 1));
    [image drawAtPoint:CGPointZero];
    UIGraphicsEndImageContext();
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 6;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"MainTableViewCell" forIndexPath:indexPath];
    UILabel *shunxu = [cell viewWithTag:101];
    UIImageView *icon = [cell viewWithTag:102];
    UILabel *name = [cell viewWithTag:103];
    UILabel *bushu = [cell viewWithTag:104];
    UILabel *zanNum = [cell viewWithTag:106];
    
    
    // Configure the cell...
    
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
