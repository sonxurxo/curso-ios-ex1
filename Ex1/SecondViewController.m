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
    NSLog(@"viewDidLoad");
    self.title = @"Second";
    
    [self.openModalButton addTarget:self action:@selector(didTapOpenModalButton2:) forControlEvents:UIControlEventTouchUpInside];
}

- (void)viewWillAppear:(BOOL)animated
{
    NSLog(@"viewWillAppear");
    
    if ([[NSUserDefaults standardUserDefaults] stringForKey:@"name_preference"]) {
        NSLog(@"Name: %@", [[NSUserDefaults standardUserDefaults] stringForKey:@"name_preference"]);
    }
    [super viewWillAppear:animated];
}

- (void)viewDidAppear:(BOOL)animated
{
    NSLog(@"viewDidAppear");
    [super viewDidAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated
{
    NSLog(@"viewWillDisappear");
    
    if (self.delegate && [self.delegate respondsToSelector:NSSelectorFromString(@"secondViewControllerViewDidDisappearCallback:")])
    {
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Warc-performSelector-leaks"
        [self.delegate performSelector:NSSelectorFromString(@"secondViewControllerViewDidDisappearCallback:") withObject:@"EL PARÁMETRO"];
#pragma clang diagnostic pop
    }
    
    [super viewWillDisappear:animated];
}

- (void)viewDidDisappear:(BOOL)animated
{
    NSLog(@"viewDidDisappear");
    [super viewDidDisappear:animated];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)didTapSaveNamePreferenceButton:(id)sender {
    NSUserDefaults* defaults = [NSUserDefaults standardUserDefaults];
    [defaults setObject:self.namePreferenceTextField.text forKey:@"name_preference"];
    [defaults synchronize];
}

- (IBAction)didTapOpenModalButton:(id)sender {
    [self performSegueWithIdentifier:@"OpenTabs" sender:self];
}

- (void)didTapOpenModalButton2:(id)sender {
    NSLog(@"didTapOpenModalButton2: called");
}

@end
