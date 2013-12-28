//
//  FirstViewController.m
//  Ex1
//
//  Created by Xurxo Méndez Pérez on 24/12/13.
//  Copyright (c) 2013 SmartGalApps. All rights reserved.
//

#import "FirstViewController.h"

@interface FirstViewController ()

@end

@implementation FirstViewController {
    SecondViewController* _secondViewController;
}

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
    self.title = @"First";
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)didTapNextButton:(id)sender {
    [self performSegueWithIdentifier:@"Next" sender:self];
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([segue.identifier isEqualToString:@"Next"])
    {
        _secondViewController = segue.destinationViewController;
        _secondViewController.delegate = self;
    }
}

#pragma mark - SecondViewControllerDelegate methods

- (void)secondViewControllerViewDidDisappearCallback:(NSString *)weirdParameter
{
    NSLog(@"Second view controller view did disappear callback with parameter: %@", weirdParameter);
}

- (void)didTapOpenModalButton
{
    [self performSegueWithIdentifier:@"OpenTabs" sender:self];
//    [_secondViewController.openModalButton setTitle:@"Nuevo" forState:UIControlStateNormal];
}

#pragma mark -

@end
