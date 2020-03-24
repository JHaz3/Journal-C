//
//  HAZDetailViewController.m
//  Journal-C
//
//  Created by Jake Haslam on 3/23/20.
//  Copyright © 2020 Jake Haslam. All rights reserved.
//

#import "HAZDetailViewController.h"
#import "HAZEntryController.h"
#import "HAZEntry.h"
@interface HAZDetailViewController ()

@end

@implementation HAZDetailViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    if(self.entryLandingPad) {
        self.entryTitleTextField.text = self.entryLandingPad.title;
        self.entryBodyTextView.text = self.entryLandingPad.bodyText;
        
    }
}


 #pragma mark - Navigation
 
 - (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if (segue.identifier == @"toEntryDetalView") {
        destinationVC = segue.destination
    }
}
 

- (IBAction)saveEntryButtonTapped:(id)sender {
    
    NSString *title = self.entryTitleTextField.text;
    NSString *bodyText = self.entryBodyTextView.text;
    
    if(self.entryLandingPad) {
        HAZEntry *entry = self.entryLandingPad;
        entry.title = title;
        entry.bodyText = bodyText;
        entry.timeStamp = [NSDate new];
        [HAZEntryController.shared updateEntry:entry title:title bodyText:bodyText];
        
    }
    else {
        
        
        HAZEntry *entry = [[HAZEntry alloc] initWithTitle:title bodyText:bodyText timeStamp:[NSDate new]];
        [HAZEntryController.shared addEntry:entry];
    }
}
- (IBAction)clearEntryButtonTapped:(id)sender {
    self.entryTitleTextField.text = @"";
    self.entryBodyTextView.text = @"";
}
@end

