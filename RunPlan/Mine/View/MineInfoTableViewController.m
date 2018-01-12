//
//  MineInfoTableViewController.m
//  RunPlan
//
//  Created by JFChen on 2018/1/12.
//  Copyright © 2018年 JFChen. All rights reserved.
//

#import "MineInfoTableViewController.h"
#import "MineInfoTableViewCell.h"

@interface MineInfoTableViewController ()

@end

@implementation MineInfoTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
    
    [self.tableView registerNib:[UINib nibWithNibName:@"MineInfoTableViewCell" bundle:nil] forCellReuseIdentifier:@"MineInfoTableViewCell"];
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
    return 4;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"MineInfoTableViewCell" forIndexPath:indexPath];
    
    UILabel *label1 = [cell viewWithTag:101];
    UILabel *label2 = [cell viewWithTag:102];
    
    // Configure the cell...
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 80.0;
}

@end
