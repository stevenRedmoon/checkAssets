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
    //UIStoryboard *sbFile = [UIStoryboard storyboardWithName:StoryboardName bundle:nil];
    //RZIndexViewController *indexController = [sbFile instantiateViewControllerWithIdentifier:RZIndexViewControllerID];
    //[self presentViewController:indexController animated:YES completion:nil];
    //UIWindow *window = [UIApplication sharedApplication].keyWindow;
    //window.rootViewController = indexController;
    
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

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
