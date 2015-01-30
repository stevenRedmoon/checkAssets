//
//  RZHTTPManager.m
//  checkCapital
//
//  Created by redmoon on 1/29/15.
//  Copyright (c) 2015 redmoon. All rights reserved.
//
#define kStoryboardName @"Main"
#define kDestControllerName @"RZDetailViewController"

#import "RZHTTPManager.h"
#import "macro.h"
@implementation RZHTTPManager
@synthesize processType;
@synthesize viewController;

#pragma mark -Process task for transferring to DetailViewController
-(void)processToDetailViewController:(ASIHTTPRequest *)request{
    RZDetailViewController *detailC = [[UIStoryboard storyboardWithName:kStoryboardName bundle:nil]
                                       instantiateViewControllerWithIdentifier:kDestControllerName];
    
    [self.viewController.navigationController pushViewController:detailC animated:YES];
    
    detailC.receive = [request responseData];
    
    [HUD hide:YES afterDelay:1];
}

#pragma mark -create an asynchronous request
-(void)grabURLInBackground:(NSString *) formatURL onView:(UIView *)baseView{
    
    NSURL *url = [NSURL URLWithString:formatURL];
    ASIHTTPRequest *request = [ASIHTTPRequest requestWithURL:url];
    [request setDelegate:self];
    
    [request startAsynchronous];
    
    HUD = [MBProgressHUD showHUDAddedTo:baseView animated:YES];
    HUD.delegate = self;
}

#pragma mark -ASIHttp-delegate method
-(void)requestFinished:(ASIHTTPRequest *)request{
    
    switch (processType) {
        case DetailViewController:
        {
            [self processToDetailViewController:request];
        }
            break;
            
        default:
        DLog(@"default result");
            break;
    }
    
}

-(void)requestFailed:(ASIHTTPRequest *)request{
    NSError *error = [request error];
    NSLog(@"error:%@",error);
    [HUD hide:YES];
}

#pragma mark - MBProgressHUDDelegate
- (void)hudWasHidden:(MBProgressHUD *)hud {
    // Remove HUD from screen when the HUD was hidded
    [HUD removeFromSuperview];
    HUD = nil;
}

@end
