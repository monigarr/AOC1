//
//  DetailViewController.h
//  masterdetail
//
//  Created by Monica Peters on 7/31/12.
//  Copyright (c) 2012 Web & Mobile Developer. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailViewController : UIViewController <UISplitViewControllerDelegate>

@property (strong, nonatomic) id detailItem;

@property (strong, nonatomic) IBOutlet UILabel *detailDescriptionLabel;

@end
