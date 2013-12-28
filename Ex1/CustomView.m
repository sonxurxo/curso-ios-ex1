//
//  CustomView.m
//  Ex1
//
//  Created by Xurxo Méndez Pérez on 28/12/13.
//  Copyright (c) 2013 SmartGalApps. All rights reserved.
//

#import "CustomView.h"

@implementation CustomView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}

- (IBAction)didTapShareButton:(id)sender {
    
    if (self.delegate && [self.delegate respondsToSelector:NSSelectorFromString(@"didTapShareButton:")])
    {
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Warc-performSelector-leaks"
        [self.delegate performSelector:NSSelectorFromString(@"didTapShareButton:") withObject:@"EL OBJETO"];
#pragma clang diagnostic pop
    }
}

@end
