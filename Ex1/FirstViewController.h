//
//  FirstViewController.h
//  Ex1
//
//  Created by Xurxo Méndez Pérez on 24/12/13.
//  Copyright (c) 2013 SmartGalApps. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "SecondViewController.h"

@interface FirstViewController : UIViewController

@property (strong, nonatomic) IBOutletCollection(UILabel) NSArray *labels;

- (IBAction)didTapNextButton:(id)sender;

@end
