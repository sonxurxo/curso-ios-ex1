//
//  EventsViewController.m
//  Ex1
//
//  Created by Xurxo Méndez Pérez on 24/12/13.
//  Copyright (c) 2013 SmartGalApps. All rights reserved.
//

#import "EventsViewController.h"

@interface EventsViewController ()

@end

@implementation EventsViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    
    UITapGestureRecognizer* tapGestureRecognizer = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(tapGestureAction:)];
    tapGestureRecognizer.numberOfTapsRequired = 2;
    [self.view addGestureRecognizer:tapGestureRecognizer];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)tapGestureAction:(id)sender {
    NSLog(@"tapGestureAction");
}

- (IBAction)pinchGestureAction:(id)sender {
    NSLog(@"pinchGestureAction");
}

- (IBAction)rotationGestureAction:(id)sender {
    NSLog(@"rotationGestureAction");
}

- (IBAction)swipeGestureAction:(id)sender {
    NSLog(@"swipeGestureAction");
}

- (IBAction)panGestureAction:(id)sender {
    NSLog(@"panGestureAction");
}

- (IBAction)longPressGestureAction:(id)sender {
    UILongPressGestureRecognizer* recognizer = (UILongPressGestureRecognizer*)sender;
    NSLog(@"longPressGestureAction: %d", recognizer.state);
}
@end
