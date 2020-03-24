//
//  HAZEntry.m
//  Journal-C
//
//  Created by Jake Haslam on 3/23/20.
//  Copyright © 2020 Jake Haslam. All rights reserved.
//

#import "HAZEntry.h"

@implementation HAZEntry

- (instancetype)initWithTitle:(NSString *)title bodyText:(NSString *)bodyText timeStamp:(NSDate *)timeStamp
{
    self = [super init];
    if (self) {
        _title = title;
        _bodyText = bodyText;
        if (timeStamp) {
            _timeStamp = timeStamp;
        }
        else {
            _timeStamp = [NSDate alloc];
        }
    }
    return self;
}

@end
