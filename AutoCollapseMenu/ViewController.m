//
//  ViewController.m
//  AutoCollapseMenu
//
//  Created by Tai Truong on 4/17/13.
//  Copyright (c) 2013 Tai Truong. All rights reserved.
//

#import "ViewController.h"
#import "TTAutoCollapseMenu.h"

@interface ViewController () <TTAutoCollapseMenuDelegate>
{
    NSMutableArray *_arrImages;
}
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
	
    _arrImages = [[NSMutableArray alloc] initWithObjects:@"facebook", @"twitter", @"mail", nil];
    // Set action items, and previous items will be removed from action picker if there is any.
    self.actionHeaderView.borderGradientHidden = NO;
	self.actionHeaderView.delegate = self;
    
    [self.view addSubview:self.actionHeaderView];
    [self.actionHeaderView reloadData];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#define NUMBER_MENU_ITEMS 3

#pragma mark - TTAutoCollapseMenuDelegate
-(NSInteger)numberOfItemInAutoCollapseMenu
{
    return NUMBER_MENU_ITEMS;
}

-(UIButton *)autoCollapseMenu:(TTAutoCollapseMenu *)menu viewForItemAtIndex:(NSInteger)index
{
    UIButton *view = [UIButton buttonWithType:UIButtonTypeCustom];
    [view setImage:[UIImage imageNamed:[_arrImages objectAtIndex:index]] forState:UIControlStateNormal];
    view.frame = CGRectMake(0.0f, 0.0f, AUTOEXPANDMENU_ITEM_WIDTH, AUTOEXPANDMENU_ITEM_HEIGHT);
    view.imageEdgeInsets = UIEdgeInsetsMake(13.0f, 13.0f, 13.0f, 13.0f);
    
    return view;
}

-(void)autoCollapseMenu:(TTAutoCollapseMenu *)menu didSelectItemAtIndex:(NSInteger)index
{
    NSLog(@"didSelectItemAtIndex %d", index);
}

@end
