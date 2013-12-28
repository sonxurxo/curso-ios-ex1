//
//  CustomView.h
//  Ex1
//
//  Created by Xurxo Méndez Pérez on 28/12/13.
//  Copyright (c) 2013 SmartGalApps. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CustomView : UIView

@property (strong, nonatomic) IBOutlet UILabel *label;

@property (strong, nonatomic) id delegate;

- (IBAction)didTapShareButton:(id)sender;

@end
