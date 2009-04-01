/*********************************************************************
 *  \file STTiledImageViewAppDelegate.h
 *  \author Kailoa Kadano
 *  \date 2009/3/29
 *  \class STTiledImageViewAppDelegate
 *  \brief Part of STTiledImageView
 *  \details
 *
 *  \abstract CLASS_ABSTRACT 
 *  \copyright Copyright 2009 6Tringle LLC. All rights reserved.
 */

#import <UIKit/UIKit.h>

@class STTiledImageViewController;

@interface STTiledImageViewAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    STTiledImageViewController *viewController;
}

#pragma mark ** Properties **
@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet STTiledImageViewController *viewController;

@end

