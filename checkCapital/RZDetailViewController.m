//
//  RZDetailViewController.m
//  checkCapital
//
//  Created by redmoon on 1/29/15.
//  Copyright (c) 2015 redmoon. All rights reserved.
//

#import "RZDetailViewController.h"
#import "macro.h"
@interface RZDetailViewController ()


@end

@implementation RZDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    //DLog(@"test:%@",self.receive);
    self.testImage.image = [UIImage imageWithData:self.receive];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
