//
//  ViewController.m
//  Ex1
//
//  Created by Xurxo Méndez Pérez on 24/12/13.
//  Copyright (c) 2013 SmartGalApps. All rights reserved.
//

#import "SecondViewController.h"

#import "Tab1ViewController.h"

@interface SecondViewController ()

@end

@implementation SecondViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.title = @"Second";
    
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)didTapOpenModalButton:(id)sender {
    
    
    Tab1ViewController* tab1ViewController = [[UIStoryboard storyboardWithName:@"Main" bundle:nil] instantiateViewControllerWithIdentifier:@"Tab1ViewController"];
    
    UINavigationController* navController = [[UINavigationController alloc] initWithRootViewController:tab1ViewController];
    
    
    UIViewController* tab2ViewController = [[UIStoryboard storyboardWithName:@"Main" bundle:nil] instantiateViewControllerWithIdentifier:@"Tab2ViewController"];
    
    
    UITabBarController* tabBarController = [[UITabBarController alloc] init];
    

    tabBarController.viewControllers = @[navController, tab2ViewController];
    
    
//    [self presentViewController:tabBarController animated:YES completion:NULL];
    
    [self presentViewController:tabBarController animated:YES completion:^{
        NSLog(@"Se presentó");
    }];
    
//    [self performSegueWithIdentifier:@"OpenTabs" sender:self];
}

@end
