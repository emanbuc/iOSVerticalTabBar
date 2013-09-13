//
//  NavigationSectionInfo.m
//  FSVerticalTabBarExample
//
//  Created by Gianos on 13/09/13.
//
//

#import "NavigationSectionInfo.h"

@implementation NavigationSectionInfo

@synthesize identifier = _identifier ;
@synthesize title = _title;
@synthesize navBarImageName = _navBarImageName;

- (id)init {
    return [self initWithInfo:nil:nil:nil];
}

// this class's desginated initializer
- (id)initWithInfo:(NSString*)anIdentifier:(NSString*)aTitle:(NSString*)aNavBarImageName {
    self = [super init]; // call superclass's designated initializer
    if (self) {
        _identifier=anIdentifier;
        _title=aTitle;
        _navBarImageName=aNavBarImageName;
    }
    return self;
}


@end
