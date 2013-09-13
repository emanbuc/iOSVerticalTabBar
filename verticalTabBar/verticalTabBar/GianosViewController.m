//
//  GianosViewController.m
//  verticalTabBar
//
//  Created by Gianos on 13/09/13.
//  Copyright (c) 2013 Gianos. All rights reserved.
//

#import "GianosViewController.h"
#import "VerticalTabBarController/FSVerticalTabBarController.h"
#import "NavigationSectionInfo.h"

@interface GianosViewController () {
    NSArray* viewControllers;
}

@end


@implementation GianosViewController

@synthesize navigationMap;

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.delegate = self;
    
    //Create view controllers
    NSMutableArray* controllersToAdd = [[NSMutableArray alloc] init];
    
    
    NavigationSectionInfo* nsi1 =[[NavigationSectionInfo alloc]initWithInfo:@"sezione1" :@"sezione1" :@"magnifying-glass.png"];
    
    NavigationSectionInfo* nsi2 =[[NavigationSectionInfo alloc]initWithInfo:@"sezione2" :@"sezione2" :@"magnifying-glass.png"];
    
    NavigationSectionInfo* nsi3 =[[NavigationSectionInfo alloc]initWithInfo:@"sezione3" :@"sezione3" :@"magnifying-glass.png"];
    
    navigationMap = [NSArray arrayWithObjects:nsi1,nsi2,nsi3,nil];
    
    
    for (int i=0; i<navigationMap.count; i++) {
        
        NavigationSectionInfo* nsi =(NavigationSectionInfo*)navigationMap[i];
        UIViewController * view = [self.storyboard instantiateViewControllerWithIdentifier:nsi.identifier];
        
        //NSString * title = [NSString stringWithFormat:@"tab %d", i+1];
        view.tabBarItem = [[UITabBarItem alloc] initWithTitle:nsi.title image:[UIImage imageNamed:nsi.navBarImageName] tag: 0];
        [controllersToAdd addObject:view];
    }
    
    viewControllers = [NSArray arrayWithArray:controllersToAdd];
    
    //set the view controllers of the the tab bar controller
    [self setViewControllers:viewControllers];
    
    NSArray *colors = [NSArray arrayWithObjects:(id)[UIColor whiteColor].CGColor,(id)[UIColor lightGrayColor].CGColor, nil];
    self.tabBar.backgroundGradientColors = colors;
    
    self.selectedViewController = ((UIViewController*)[viewControllers objectAtIndex:0]);
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
