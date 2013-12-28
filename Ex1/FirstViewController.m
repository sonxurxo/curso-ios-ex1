//
//  FirstViewController.m
//  Ex1
//
//  Created by Xurxo Méndez Pérez on 24/12/13.
//  Copyright (c) 2013 SmartGalApps. All rights reserved.
//

#import "FirstViewController.h"

#import "Utils.h"

#import "CustomView.h"

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
    
    UIColor* labelColor = [UIColor colorWithRed:.9 green:.1 blue:.1 alpha:1];
    for (UILabel* label in self.labels)
    {
        label.textColor = labelColor;
    }
    
    NSBundle* bundle = [NSBundle mainBundle];
    
    NSArray* views = [bundle loadNibNamed:@"CustomView" owner:self options:nil];
    
    CustomView* customView = [views firstObject];
    
    customView.delegate = self;
    customView.label.text = @"pepe";
    
    customView.frame = CGRectMake(30, 70, customView.frame.size.width, customView.frame.size.height);
    
    [self.view addSubview:customView];
}

- (void)didTapShareButton:(NSString*)string
{
    NSLog(@"Pulso el boton con valor : %@", string);
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)didTapNextButton:(id)sender {
    [[Utils sharedInstance] weirdMethod];
    [self performSegueWithIdentifier:@"Next" sender:self];
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([segue.identifier isEqualToString:@"Next"])
    {
        SecondViewController* secondViewController = segue.destinationViewController;
        secondViewController.delegate = self;
    }
}

#pragma mark - SecondViewControllerDelegate methods

- (void)secondViewControllerViewDidDisappearCallback:(NSString *)weirdParameter
{
    NSLog(@"Second view controller view did disappear callback with parameter: %@", weirdParameter);
}

#pragma mark -

@end
