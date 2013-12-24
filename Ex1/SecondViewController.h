//
//  ViewController.h
//  Ex1
//
//  Created by Xurxo Méndez Pérez on 24/12/13.
//  Copyright (c) 2013 SmartGalApps. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SecondViewController : UIViewController

@property (strong, nonatomic) id delegate;

@property (strong, nonatomic) IBOutlet UIButton *openModalButton;

- (IBAction)didTapOpenModalButton:(id)sender;

@end
