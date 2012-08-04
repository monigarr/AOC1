//
//  ViewController.m
//  singleViewTest
//
//  Created by Monica Peters on 7/31/12.
//  Copyright (c) 2012 Web & Mobile Developer. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    
    self.view.backgroundColor = [UIColor blackColor];
    
    //TITLE//
    booktitle = [[UILabel alloc] initWithFrame:CGRectMake(10, 10, 300, 40)];
    if (booktitle != nil)
    {
        booktitle.textAlignment = UITextAlignmentCenter;
        booktitle.textColor = [UIColor whiteColor];
        booktitle.backgroundColor = [UIColor redColor];
        booktitle.text = @"Objective-C Programming.";
    }
    [self.view addSubview: booktitle];

    //AUTHOR//
    author = [[UILabel alloc] initWithFrame:CGRectMake(10, 70, 100, 25)];
    if (author != nil)
    {
        author.textAlignment = UITextAlignmentRight;
        author.textColor = [UIColor whiteColor];
        author.backgroundColor = [UIColor cyanColor];
        author.text = @"author:";
    }
    [self.view addSubview: author];
    
    //AUTHOR NAME//
    authorname = [[UILabel alloc] initWithFrame:CGRectMake(110, 70, 320, 25)];
    if (authorname != nil)
    {
        authorname.textAlignment = UITextAlignmentLeft;
        authorname.textColor = [UIColor cyanColor];
        authorname.backgroundColor = [UIColor whiteColor];
        authorname.text = @"Aaron Hillegass";
    }
    [self.view addSubview: authorname];
    
    //PUBLISHED//
    published = [[UILabel alloc] initWithFrame:CGRectMake(10, 110, 100, 25)];
    if (published != nil)
    {
        published.textAlignment = UITextAlignmentRight;
        published.textColor = [UIColor blueColor];
        published.backgroundColor = [UIColor yellowColor];
        published.text = @"published";
        [self.view addSubview: published];
    }
    
    //PUBLISHED DATE//
    publishdate = [[UILabel alloc] initWithFrame:CGRectMake(110, 110, 140, 25)];
    if (publishdate != nil)
    {
        publishdate.textAlignment = UITextAlignmentLeft;
        publishdate.textColor = [UIColor yellowColor];
        publishdate.backgroundColor = [UIColor blueColor];
        publishdate.text = @"2012";
    }
    [self.view addSubview: publishdate];
    
    //SUMMARY//
    summary = [[UILabel alloc] initWithFrame:CGRectMake(10, 150, 100, 25)];
    if (summary != nil)
    {
        
        summary.textAlignment = UITextAlignmentLeft;
        summary.textColor = [UIColor greenColor];
        summary.backgroundColor = [UIColor orangeColor];
        summary.text = @"summary:";
    }
    [self.view addSubview: summary];
    
    summarytext = [[UILabel alloc] initWithFrame:CGRectMake(10, 175, 300, 150)];
    if (summarytext != nil)
    {
        summarytext.textAlignment = UITextAlignmentCenter;
        summarytext.textColor = [UIColor brownColor];
        summarytext.backgroundColor = [UIColor whiteColor];
        summarytext.numberOfLines = 4;
        summarytext.text = @"Want to write applications for iOS or the Mac?  This intro to programming and the Objective-C language is the first step.";
    }
    [self.view addSubview: summarytext];
    
    //LIST OF ITEMS//
    listofitems = [[UILabel alloc] initWithFrame:CGRectMake(10, 355, 150, 25)];
    if (listofitems != nil)
    {
        listofitems.textAlignment = UITextAlignmentLeft;
        listofitems.textColor = [UIColor greenColor];
        listofitems.backgroundColor = [UIColor purpleColor];
        listofitems.text = @"List of Items";
    }
    [self.view addSubview: listofitems];
    
    //LIST OF ITEMS CONTENT//
    NSArray *itemsArray = [[NSArray alloc] initWithObjects:@"variables",@"if/else",@"functions",@"numbers",@"loops", nil];
    
    NSMutableArray *mutableArray = [[NSMutableArray alloc] initWithArray:itemsArray];
    
    listofitemscontent = [[UILabel alloc] initWithFrame:CGRectMake(10, 380, 300, 50)];
    
    if (listofitemscontent != nil)
    {
        listofitemscontent.textColor = [UIColor whiteColor];
        listofitemscontent.backgroundColor = [UIColor blackColor];
        listofitemscontent.textAlignment = UITextAlignmentCenter;
        listofitemscontent.numberOfLines = 5;
        listofitemscontent.text = [NSString stringWithFormat:@"%@, %@, %@, %@, and %@", [mutableArray objectAtIndex:0], [mutableArray objectAtIndex:1], [mutableArray objectAtIndex:2], [mutableArray objectAtIndex:3], [mutableArray objectAtIndex:4] ];
        
    }
    [self.view addSubview: listofitemscontent];
    
    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.

}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (void)viewDidAppear:(BOOL)animated
{

}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

@end
