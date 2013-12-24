//
//  Utils.m
//  Ex1
//
//  Created by Xurxo Méndez Pérez on 24/12/13.
//  Copyright (c) 2013 SmartGalApps. All rights reserved.
//

#import "Utils.h"

@implementation Utils

static Utils *sharedInstance = nil;

+ (Utils *)sharedInstance {
    if (nil != sharedInstance) {
        return sharedInstance;
    }
    
    static dispatch_once_t pred;        // Lock
    dispatch_once(&pred, ^{             // This code is called at most once per app
        sharedInstance = [[Utils alloc] init];
    });
    
    return sharedInstance;
}

- (void)weirdMethod
{
    NSLog(@"Weird method called");
}

@end
