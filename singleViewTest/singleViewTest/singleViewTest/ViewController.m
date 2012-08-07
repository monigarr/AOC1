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
    
    self.view.backgroundColor = [UIColor purpleColor];
    
    //TITLE//
    //center, contrasting background color and font color//
    bookTitle = [[UILabel alloc] initWithFrame:CGRectMake(10, 10, 300, 40)];
    if (bookTitle != nil)
    {
        bookTitle.textAlignment = UITextAlignmentCenter;
        bookTitle.textColor = [UIColor whiteColor];
        bookTitle.backgroundColor = [UIColor redColor];
        bookTitle.text = @"Objective-C Programming.";
    }
    [self.view addSubview: bookTitle];

    //AUTHOR//
    //right aligned, contrasting background color and font color//
    authorLabel = [[UILabel alloc] initWithFrame:CGRectMake(10, 70, 100, 25)];
    if (authorLabel != nil)
    {
        authorLabel.textAlignment = UITextAlignmentRight;
        authorLabel.textColor = [UIColor blueColor];
        authorLabel.backgroundColor = [UIColor cyanColor];
        authorLabel.text = @"author: ";
    }
    [self.view addSubview: authorLabel];
    
    //AUTHOR NAME//
    //left aligned, contrasting background color and font color//
    authorName = [[UILabel alloc] initWithFrame:CGRectMake(110, 70, 320, 25)];
    if (authorName != nil)
    {
        authorName.textAlignment = UITextAlignmentLeft;
        authorName.textColor = [UIColor cyanColor];
        authorName.backgroundColor = [UIColor blueColor];
        authorName.text = @" Aaron Hillegass";
    }
    [self.view addSubview: authorName];
    
    //PUBLISHED//
    //right aligned, contrasting background color and font color//
    publishedLabel = [[UILabel alloc] initWithFrame:CGRectMake(10, 110, 100, 25)];
    if (publishedLabel != nil)
    {
        publishedLabel.textAlignment = UITextAlignmentRight;
        publishedLabel.textColor = [UIColor blueColor];
        publishedLabel.backgroundColor = [UIColor yellowColor];
        publishedLabel.text = @"published: ";
        [self.view addSubview: publishedLabel];
    }
    
    //PUBLISHED DATE//
    //left aligned, contrasting background color and font color//
    publishDate = [[UILabel alloc] initWithFrame:CGRectMake(110, 110, 140, 25)];
    if (publishDate != nil)
    {
        publishDate.textAlignment = UITextAlignmentLeft;
        publishDate.textColor = [UIColor yellowColor];
        publishDate.backgroundColor = [UIColor blueColor];
        publishDate.text = @" 2012";
    }
    [self.view addSubview: publishDate];
    
    //SUMMARY//
    //left aligned, contrasting background color and font color//
    summaryLabel = [[UILabel alloc] initWithFrame:CGRectMake(10, 150, 100, 25)];
    if (summaryLabel != nil)
    {
        
        summaryLabel.textAlignment = UITextAlignmentLeft;
        summaryLabel.textColor = [UIColor greenColor];
        summaryLabel.backgroundColor = [UIColor orangeColor];
        summaryLabel.text = @"summary: ";
    }
    [self.view addSubview: summaryLabel];
    
    //SUMMARY TEXT//
    //center aligned, contrasting background color and font color//
    //My own actual summary based on what I read in the book.
    summaryText = [[UILabel alloc] initWithFrame:CGRectMake(10, 175, 300, 150)];
    if (summaryText != nil)
    {
        summaryText.textAlignment = UITextAlignmentCenter;
        summaryText.textColor = [UIColor orangeColor];
        summaryText.backgroundColor = [UIColor greenColor];
        summaryText.numberOfLines = 4;
        summaryText.text = @"I've only read Chapters 1 to 5 so far. This book is a great into to learning to write apps for iOS and Mac with Objective-C programming language.";
    }
    [self.view addSubview: summaryText];
    
    //LIST OF ITEMS//
    listOfItemsLabel = [[UILabel alloc] initWithFrame:CGRectMake(10, 355, 150, 25)];
    if (listOfItemsLabel != nil)
    {
        listOfItemsLabel.textAlignment = UITextAlignmentLeft;
        listOfItemsLabel.textColor = [UIColor greenColor];
        listOfItemsLabel.backgroundColor = [UIColor blueColor];
        listOfItemsLabel.text = @"List of Items: ";
    }
    [self.view addSubview: listOfItemsLabel];
    
    //LIST OF ITEMS CONTENT//
    // allocate and initialize NSArray //
    // add items to the array //
    NSArray *itemsArray = [[NSArray alloc] initWithObjects:@"variables",@"if/else",@"functions",@"numbers",@"loops", nil];
    
    //NSMutableString
    NSMutableString *mutableStringList = [[NSMutableString alloc] init];
    
    //Loop through NSArray and append to NSMutableString    
    for (int i=0; i < [itemsArray count]; i++)
    {
        NSString *listEachItem = [itemsArray objectAtIndex:i];
        
        // If it's the last item, format doesn't include ","
        if ([itemsArray count] == i+1){
            [mutableStringList appendString:[[NSString alloc] initWithFormat:@"%@", listEachItem]];
            
            // Separate all items with a ", "
        } else {
            [mutableStringList appendString:[[NSString alloc] initWithFormat:@"%@, ", listEachItem]];
        }
    }
    
    listOfItemsContent = [[UILabel alloc] initWithFrame:CGRectMake(10, 380, 300, 50)];
    
    if (listOfItemsContent != nil)
    {
        listOfItemsContent.textColor = [UIColor blueColor];
        listOfItemsContent.backgroundColor = [UIColor greenColor];
        listOfItemsContent.textAlignment = UITextAlignmentCenter;
        listOfItemsContent.numberOfLines = 5;
        listOfItemsContent.text = mutableStringList;
        
    }
    [self.view addSubview: listOfItemsContent];
    
    //END AOC1 WEEK 2 PROJECT 2//
    
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
