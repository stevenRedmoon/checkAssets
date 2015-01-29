//
//  RZIndexViewController.m
//  checkCapital
//
//  Created by redmoon on 1/27/15.
//  Copyright (c) 2015 redmoon. All rights reserved.
//

#import "RZIndexViewController.h"
#import "RZScanViewController.h"

#define StoryboardName @"Main"
#define RZScanViewControllerID @"scanViewController"

@interface RZIndexViewController ()

@end

@implementation RZIndexViewController

- (void)viewDidLoad {
    [super viewDidLoad];/*
    // Do any additional setup after loading the view.
    
    
    // Make preparation from storyboard
    UIStoryboard *sbFile = [UIStoryboard storyboardWithName:StoryboardName bundle:nil];
    
    // 1. Make RZScanViewController
    RZScanViewController *scanController = [sbFile instantiateViewControllerWithIdentifier:RZScanViewControllerID];
    // 2. Make otherViewController
    
    // 3. Make NSArray for two viewControllers.
    NSMutableArray *controllers = [NSMutableArray arrayWithObject:scanController];
    // 4. Add controller into NSArray
    self.viewControllers = controllers;
    */
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
