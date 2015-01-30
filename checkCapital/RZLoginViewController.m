//
//  RZLoginViewController.m
//  checkCapital
//
//  Created by redmoon on 1/27/15.
//  Copyright (c) 2015 redmoon. All rights reserved.
//
#define StoryboardName @"Main"
#define RZIndexViewControllerID @"RZIndexViewController"
#import "RZLoginViewController.h"
#import "RZIndexViewController.h"
@interface RZLoginViewController ()
@property (weak, nonatomic) IBOutlet UITextField *username;
@property (weak, nonatomic) IBOutlet UITextField *password;
@end

@implementation RZLoginViewController 
- (IBAction)loginButton:(id)sender {
    NSLog(@"Login button is touched .\n");
    NSLog(@"username:%@,password:%@\n",_username.text,_password.text);
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)cancleKeyBoard {
    [self.view endEditing:YES];
}

@end
