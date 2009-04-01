/*********************************************************************
 *  \file STTiledImageViewAppDelegate.m
 *  \author Kailoa Kadano
 *  \date 2009/3/29
 *  \class STTiledImageViewAppDelegate
 *  \brief Part of STTiledImageView
 *  \details
 *
 *  \abstract CLASS_ABSTRACT 
 *  \copyright Copyright 2009 6Tringle LLC. All rights reserved.
 */

#import "STTiledImageViewAppDelegate.h"
#import "STTiledImageViewController.h"

@implementation STTiledImageViewAppDelegate

#pragma mark ** Synthesis **
@synthesize window;
@synthesize viewController;

/*********************************************************************/
#pragma mark -
#pragma mark ** Methods **

- (void)dealloc {
    [viewController release];
    [window release];
    [super dealloc];
}

/*********************************************************************/
#pragma mark -
#pragma mark ** AppDelegate Methods **

- (void)applicationDidFinishLaunching:(UIApplication *)application {    
    
    // Override point for customization after app launch    
    [window addSubview:viewController.view];
    [window makeKeyAndVisible];
}

@end
