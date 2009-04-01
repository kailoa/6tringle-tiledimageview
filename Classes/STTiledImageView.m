/*********************************************************************
 *  \file STTiledImageView.m
 *  \author Kailoa Kadano
 *  \date 2009/3/29
 *  \class STTiledImageView
 *  \brief Part of STTiledImageView
 *  \details
 *
 *  \abstract CLASS_ABSTRACT 
 *  \copyright Copyright 2009 6Tringle LLC. All rights reserved.
 */

#import "STTiledImageView.h"

@implementation STTiledImageView
@synthesize TiledImage;

/*********************************************************************/
#pragma mark -
#pragma mark ** Methods **

- (id)initWithFrame:(CGRect)frame {
    if (self = [super initWithFrame:frame]) {
        // Initialization code
    }
    return self;
}
- (void)dealloc {
    [super dealloc];
}

/*********************************************************************/
#pragma mark -
#pragma mark ** UIView Methods **

- (void)drawRect:(CGRect)rect 
{
    if (TiledImage) {
        
        //Since we are retaining the image, we append with ret_ref.  this reminds us to release at a later date.
        CGImageRef image_to_tile_ret_ref = CGImageRetain(TiledImage.CGImage); 
        
        CGRect image_rect;
        image_rect.size = TiledImage.size;  //This sets the tile to the native size of the image.  Change this value to adjust the size of an indivitual "tile."
        
        CGContextRef context = UIGraphicsGetCurrentContext();
        
        CGContextDrawTiledImage(context, image_rect, image_to_tile_ret_ref);
        
        CGImageRelease(image_to_tile_ret_ref);
    }
}

@end
