//
//  RZQuerySearchViewController.h
//  checkCapital
//
//  Created by redmoon on 1/27/15.
//  Copyright (c) 2015 redmoon. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface RZQuerySearchViewController : UITableViewController
{
    NSArray *data;
    NSMutableArray *filterData;
    UISearchDisplayController *searchDisplayController;
}
@end
