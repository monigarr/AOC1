//
//  ViewController.h
//  singleViewTest
//
//  Created by Monica Peters on 7/31/12.
//  Copyright (c) 2012 Web & Mobile Developer. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
{
    //meaningful detailed method names following iOS Conventions
    //methodName or thisIsAMethodName
    UILabel *bookTitle, *authorLabel, *authorName, *publishedLabel, *publishDate, *summaryLabel, *summaryText, *listOfItemsLabel, *listOfItemsContent;
    NSMutableString *mutableArray;
}

@end
