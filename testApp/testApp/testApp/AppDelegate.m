//
//  AppDelegate.m
//  testApp
//
//  Created by Monica Peters on 7/31/12.
//  Copyright (c) 2012 Web & Mobile Developer. All rights reserved.
//

#import "AppDelegate.h"

@implementation AppDelegate

@synthesize window = _window;


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]] autorelease];
    // Override point for customization after application launch.
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    
    //Start Monica's Code
    
    
    // This is my story and I'm sticking to it.
    // It's all true too.
    // Once upon a time a puppy named Niionhontesha
    // stashed her chicken leg near her favorite tree
    // a tiny green grass snake tried to steal the chicken leg
    // Niiohontesha grabbed the snake and danced with it.
    // Monica saved the snake from death
    // the snake keeps coming back for a fight with Niionhontesha
    
    // create float, cast float to int with NSLog
    bool isPuppyGuarding = NO;
    bool isSnakeStealing = YES;
    float chickenLegs = 5.7f;
    int snakeHissAtPuppy = 0;
    int puppyRollsOnSnake = 1;
    int snakeLives = 5;
    NSArray *loadStory = [NSArray arrayWithObjects: @"Puppy snack stash has Chicken legs", @"A grass snake wants to steal from Puppy's snack stash", @"If Puppy's snack stash disappears, the Puppy will eat the Snake.", nil];
    
    // perform AND, OR comparison. use float, int, bool.
    // bool must be YES or NO in all caps.
    // loop while Puppy is Not Guarding her Stash and the Snake is Stealing the Puppy's Stash.
    
    // perform while loop that increments int var and outputs to console.
    while(!isPuppyGuarding && isSnakeStealing)
    {
        int randomNum = arc4random() % 2;  // create random number of chicken legs
        if (randomNum > 0)
            {
                NSLog(@"A Snake stole a Chicken Leg from Puppy's Snack Stash.");
                chickenLegs--;
                snakeLives--;
            }
        else if (randomNum < 1)
        {
            NSLog(@"No More Chicken Legs! Puppy eats Snake!");
            snakeLives = 0;
        }
        else
            {
                NSLog(@"Puppy stops Snake from stealing. Snake lives to see another day.");
                chickenLegs++;
            }
            
            NSLog(@"Puppy has %f Chicken Legs in her stash.", chickenLegs);
            
        // use if, else if, else check using data type of my choice.
        //70% chance of puppy's stash being stolen by snake
        int chanceOfStashTheft = (arc4random() % 101) % 70; 
        if (chanceOfStashTheft == 0)
            {
                NSLog(@"bah dump, Bah Dump, BAH DUMP!");
                NSLog(@"Puppy catches the Snake stealing Chicken Legs!");
                isSnakeStealing = YES;
                snakeLives--;
            }
        else if (chickenLegs == snakeLives)
            {
                isPuppyGuarding = YES;
                snakeHissAtPuppy = 2;
                NSLog((@"Monica saved Snake from death by Puppy Rolling & Crushing. Snake hissed: %c. Puppy is Guarding her snack stash: %c"), isPuppyGuarding, snakeHissAtPuppy);
                snakeLives--;
            }
        else 
            {
                puppyRollsOnSnake = 1;
                NSLog(@"Puppy rolls on top of Snake, causing Snake to slither away in shock.");
                snakeLives--;
            }
    }//while loop
            
    // perform single for loop printing out values to console.
    if ((chickenLegs >= 0) && (chickenLegs < 5))
            {
                // perform nested loop printing out values to console. 
                for (int i = 1; i <= chickenLegs; i++)
                {
                    
                    for (int c = 0; c < 0; c++)
                    {
                        //iterate through nsarray for loading story
                        NSLog(@"%@", [loadStory objectAtIndex:c]);
                    }
                
                    if (i == chickenLegs)
                    {
                        NSLog(@"Puppy has %.3f Chicken legs left in her stash. Give puppy %d more Chicken leg.", chickenLegs, (int)chickenLegs + 1);
                    }
                    NSLog(@"Puppy stashed %d Chicken Legs", i);
                }
            }
    
    if (isPuppyGuarding & !isSnakeStealing)
    {
        NSLog(@"Puppy is happy with her stash of Chicken legs.");
    }
    else if(isPuppyGuarding && isSnakeStealing)
    {
        NSLog(@"Puppy and Snake are going to fight");
        snakeLives--;
    }
    else if (snakeLives == 0)
    {
        NSLog(@"Puppy has no snack stash. Puppy ate the Snake.");
    }
    
    else
    {
        NSLog(@"This is my story and I'm sticking to it");  
        for (int story = chickenLegs; story > 0; story--)
        {
            NSLog(@"Chicken Leg total: %d", story);
            if (snakeLives == 0)
            {
                NSLog(@"That's all folks.");
            }
        }
    }

    
    return YES; 
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
