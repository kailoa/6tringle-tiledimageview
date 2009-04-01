/*********************************************************************
 *  \file STTiledImageView.h
 *  \author Kailoa Kadano
 *  \date 2009/3/29
 *  \class STTiledImageView
 *  \brief Part of STTiledImageView
 *  \details
 *
 *  \abstract CLASS_ABSTRACT 
 *  \copyright Copyright 2009 6Tringle LLC. All rights reserved.
 */

#import <UIKit/UIKit.h>

#pragma mark ** Constant Defines **

@interface STTiledImageView : UIView {
    UIImage *TiledImage; ///< Image to tile

}
#pragma mark ** Properties **
@property(retain) UIImage *TiledImage;

@end
