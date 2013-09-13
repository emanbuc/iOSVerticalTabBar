//
//  NavigationSectionInfo.h
//  FSVerticalTabBarExample
//
//  Created by Gianos on 13/09/13.
//
//

#import <Foundation/Foundation.h>

@interface NavigationSectionInfo : NSObject
@property (strong, readonly) NSString* identifier;
@property (strong, readonly) NSString* title;
@property (strong, readonly) NSString* navBarImageName;

- (id)initWithInfo:(NSString*) anIdentifier:(NSString*) aTitle:(NSString*) aNavBarImageName ;

@end
