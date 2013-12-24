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
    
    [[UIDevice currentDevice] beginGeneratingDeviceOrientationNotifications];
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(orientationChanged:) name:UIDeviceOrientationDidChangeNotification object:nil];
}


-(void) viewDidDisappear {
    // Request to stop receiving accelerometer events and turn off accelerometer
    [[NSNotificationCenter defaultCenter] removeObserver:self];
    [[UIDevice currentDevice] endGeneratingDeviceOrientationNotifications];
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

- (void)orientationChanged:(NSNotification *)notification {
    NSLog(@"orientationChanged");
}

@end
