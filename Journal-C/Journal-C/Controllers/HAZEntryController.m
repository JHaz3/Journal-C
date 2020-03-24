//
//  HAZEntryController.m
//  Journal-C
//
//  Created by Jake Haslam on 3/23/20.
//  Copyright © 2020 Jake Haslam. All rights reserved.
//

#import "HAZEntryController.h"
#import "HAZEntry.h"

@implementation HAZEntryController

// MARK: - Shared Instance

+ (HAZEntryController *) shared {
    static HAZEntryController *shared = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        shared = [HAZEntryController new];
    });
    return shared;
}


- (void)addEntry:(HAZEntry *)entry
{
    [self.entries addObject:entry];
    
    
}

- (void)removeEntry:(HAZEntry *)entry
{
    [self.entries removeObject:entry];
}

- (void)updateEntry:(HAZEntry *) entry
              title:(NSString *)title
           bodyText:(NSString *)bodyText
{
    entry.title = title;
    entry.bodyText = bodyText;
    entry.timeStamp = [NSDate new];
}

@end
