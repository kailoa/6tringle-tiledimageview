/*********************************************************************
 *  \file STTiledImageViewController.m
 *  \author Kailoa Kadano
 *  \date 2009/3/29
 *  \class STTiledImageViewController
 *  \brief Part of STTiledImageView
 *  \details
 *
 *  \abstract CLASS_ABSTRACT 
 *  \copyright Copyright 2009 6Tringle LLC. All rights reserved.
 */

#import "STTiledImageViewController.h"
#import "STTiledImageView.h"

@implementation STTiledImageViewController

/*********************************************************************/
#pragma mark -
#pragma mark ** Methods **

- (void)dealloc {
    [super dealloc];
}

/*********************************************************************/
#pragma mark -
#pragma mark ** UIViewController Methods **

- (void)viewDidLoad 
{
    [super viewDidLoad];
    
    NSString *image_path;
    if (image_path = [[NSBundle mainBundle] pathForResource:@"SampleImage" ofType:@"png"]) {
        ((STTiledImageView *)self.view).TiledImage = [[UIImage alloc] initWithContentsOfFile:image_path];
    }
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning]; // Releases the view if it doesn't have a superview
    // Release anything that's not essential, such as cached data
}

@end
