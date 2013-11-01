//
//  CCViewController.m
//  Prereq for Overdue Assignment
//
//  Created by Eliot Arntz on 10/31/13.
//  Copyright (c) 2013 Code Coalition. All rights reserved.
//

#import "CCViewController.h"

@interface CCViewController ()

@end

@implementation CCViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    //NSLog(@"%@ %@", USER_PASSWORD, USER_NAME);
    //NSLog(@"%@", self.textView.text);
    
    /* set the textView delegate property to self so that we can implement its' protocol method */
    self.textView.delegate = self;
    
    /* Create a NSMutableArray using literal syntax. Use the method mutableCopy to transform the NSArray returned from @[] to a mutable array. */
    NSMutableArray *myMutableArray = [@[@1, @"hello", @3, @"goodbye"] mutableCopy];
    /* Using the methods insertObject:atIndex and removeObjectAtIndex we can add and remove objects at a specific spot in the array */
    [myMutableArray insertObject:@"this should be first" atIndex:0];
    [myMutableArray removeObjectAtIndex:2];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/* UITextView Delegate method. This method is triggered when the user types a new character in the textView. */
-(BOOL)textView:(UITextView *)textView shouldChangeTextInRange:(NSRange)range replacementText:(NSString *)text
{
    /* Test if the entered text is a return. If it is we tell textView to dismiss the keyboard and then we stop the textView from entering in additional information as text. This is not a perfect solution because users cannot enter returns in their text and if they paste text with a return items after the return will not be added. For the functionality required in this project this solution works just fine. */
    if ([text isEqualToString:@"\n"]){
        [self.textView resignFirstResponder];
        return NO;
    }
    else {
        return YES;
    }
}

- (IBAction)processDateButtonPressed:(UIButton *)sender
{
    /* The date property of the datePicker is an NSDate object */
    NSDate *date = self.datePicker.date;
    
    /* Setup a NSDateFormatter to return the year, month and day */
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    [formatter setDateFormat:@"yyyy-MM-dd"];
    
    /* Convert the NSDate to a NSString using the method stringFromDate */
    NSString *stringFromDate = [formatter stringFromDate:date];

    /* Use NSTimeInterval or int for the return value from timeIntervalSince1970. */
    int timeInterval = [date timeIntervalSince1970];
}
@end
