//
//  ViewController.m
//  AutoCollapseMenu
//
//  Created by Tai Truong on 4/17/13.
//  Copyright (c) 2013 Tai Truong. All rights reserved.
//

#import "ViewController.h"
#import "TTAutoCollapseMenu.h"

@interface ViewController ()

@property (retain, nonatomic) TTAutoCollapseMenu *actionHeaderView;
@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    self.actionHeaderView = [[TTAutoCollapseMenu alloc] initWithFrame:self.view.bounds];
	
    // Set title
    self.actionHeaderView.titleLabel.text = @"Tap to explore menu";
	
    // Create action items, have to be UIView subclass, and set frame position by yourself.
    UIButton *facebookButton = [UIButton buttonWithType:UIButtonTypeCustom];
    [facebookButton setImage:[UIImage imageNamed:@"facebook"] forState:UIControlStateNormal];
    facebookButton.frame = CGRectMake(0.0f, 0.0f, 50.0f, 50.0f);
    facebookButton.imageEdgeInsets = UIEdgeInsetsMake(13.0f, 13.0f, 13.0f, 13.0f);
    facebookButton.center = CGPointMake(25.0f, 25.0f);
    facebookButton.tag = 1;
    
    UIButton *twitterButton = [UIButton buttonWithType:UIButtonTypeCustom];
    [twitterButton setImage:[UIImage imageNamed:@"twitter"] forState:UIControlStateNormal];
    twitterButton.frame = CGRectMake(0.0f, 0.0f, 50.0f, 50.0f);
    twitterButton.imageEdgeInsets = UIEdgeInsetsMake(13.0f, 13.0f, 13.0f, 13.0f);
    twitterButton.center = CGPointMake(75.0f, 25.0f);
    twitterButton.tag = 2;
    
    UIButton *mailButton = [UIButton buttonWithType:UIButtonTypeCustom];
    [mailButton setImage:[UIImage imageNamed:@"mail"] forState:UIControlStateNormal];
    mailButton.frame = CGRectMake(0.0f, 0.0f, 50.0f, 50.0f);
    mailButton.imageEdgeInsets = UIEdgeInsetsMake(13.0f, 13.0f, 13.0f, 13.0f);
    mailButton.center = CGPointMake(125.0f, 25.0f);
    mailButton.tag = 3;
	
    // Set action items, and previous items will be removed from action picker if there is any.
    self.actionHeaderView.items = [NSArray arrayWithObjects:facebookButton, twitterButton, mailButton, nil];
    self.actionHeaderView.borderGradientHidden = NO;
	
    [self.view addSubview:self.actionHeaderView];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
