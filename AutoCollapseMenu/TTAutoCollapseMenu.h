//
//  TTAutoCollapseMenu.h
//  AutoCollapseMenu
//
//  Created by Tai Truong on 4/17/13.
//  Copyright (c) 2013 Tai Truong. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <QuartzCore/QuartzCore.h>

#define AUTOEXPANDMENU_ITEM_HEIGHT 50
#define AUTOEXPANDMENU_ITEM_WIDTH 50

@class TTAutoCollapseMenu;
@protocol TTAutoCollapseMenuDelegate <NSObject>

-(NSInteger)numberOfItemInAutoCollapseMenu;
-(UIButton*)autoCollapseMenu:(TTAutoCollapseMenu*)menu viewForItemAtIndex:(NSInteger)index;
-(void)autoCollapseMenu:(TTAutoCollapseMenu*)menu didSelectItemAtIndex:(NSInteger)index;

@end

@interface TTAutoCollapseMenu : UIView <UIGestureRecognizerDelegate>
{
    UIView *_actionPickerView;
    CAGradientLayer *_actionPickerGradientLayer;
    NSMutableArray *_items; // Array of UIView subclass instances, will be added into a (DDActionHeaderView's width - 20)px width and 50px height action picker.
}

@property(nonatomic, assign) BOOL borderGradientHidden; // Default is NO. Set YES to hide transparent gradient below the bottom border.
@property(nonatomic, readonly) BOOL isActionPickerExpanded;
@property(nonatomic, retain) UILabel *titleLabel;

@property (weak, nonatomic) id<TTAutoCollapseMenuDelegate> delegate;

-(void)reloadData;
@end
