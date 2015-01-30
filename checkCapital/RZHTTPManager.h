//
//  RZHTTPManager.h
//  checkCapital
//
//  Created by redmoon on 1/29/15.
//  Copyright (c) 2015 redmoon. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ASIHTTPRequest.h"
#import "MBProgressHUD.h"
#import "RZDetailViewController.h"
typedef enum {
    UnknowViewController = 1 << 0,
    DetailViewController = 1 << 1
}pushControllerType;

@interface RZHTTPManager : NSObject<MBProgressHUDDelegate,ASIHTTPRequestDelegate>{
    MBProgressHUD *HUD;    
}
@property (nonatomic,assign)pushControllerType processType;
@property (nonatomic,weak)UIViewController *viewController;
-(void)grabURLInBackground:(NSString *) formatURL onView:(UIView *)baseView;

@end
