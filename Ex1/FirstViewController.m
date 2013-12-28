//
//  FirstViewController.m
//  Ex1
//
//  Created by Xurxo Méndez Pérez on 24/12/13.
//  Copyright (c) 2013 SmartGalApps. All rights reserved.
//

#import "FirstViewController.h"

#import "SecondViewController.h"

#import "TestViewController.h"

@interface FirstViewController ()

@end

@implementation FirstViewController

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

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    
}

- (IBAction)didTapNextButton:(id)sender {
    
    UIStoryboard* storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    SecondViewController* secondViewController = [storyboard instantiateViewControllerWithIdentifier:@"SecondViewController"];
    
    
//    TestViewController* testViewController = [[TestViewController alloc] initWithNibName:@"TestViewController" bundle:nil];
//    testViewController.label.text = @"PEPE";
    
//    SecondViewController* secondViewController = [ instantiateViewControllerWithIdentifier:@"SecondViewController"];
    
    
    [self.navigationController pushViewController:secondViewController animated:YES];
//    [self performSegueWithIdentifier:@"Next" sender:self];
}


@end
