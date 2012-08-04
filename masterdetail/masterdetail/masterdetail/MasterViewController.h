//
//  MasterViewController.h
//  masterdetail
//
//  Created by Monica Peters on 7/31/12.
//  Copyright (c) 2012 Web & Mobile Developer. All rights reserved.
//

#import <UIKit/UIKit.h>

@class DetailViewController;

@interface MasterViewController : UITableViewController

@property (strong, nonatomic) DetailViewController *detailViewController;

@end
