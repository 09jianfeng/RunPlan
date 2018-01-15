//
//  ChallengPlanSetController.m
//  RunPlan
//
//  Created by JFChen on 2018/1/12.
//  Copyright © 2018年 JFChen. All rights reserved.
//

#import "ChallengPlanSetController.h"

@interface ChallengPlanSetController ()<UIPickerViewDelegate>
@property (weak, nonatomic) IBOutlet UIPickerView *pickerView;
@property (weak, nonatomic) IBOutlet UILabel *labelZhanli;

@end

@implementation ChallengPlanSetController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - touch event

- (IBAction)btnConfigToChallenge:(id)sender {
    
}

- (IBAction)btnAgreePressed:(id)sender {
    
}

- (IBAction)btnZhanliInfoPressed:(id)sender {
    
}

- (IBAction)btnRuleInfoPressed:(id)sender {
    
}
@end
