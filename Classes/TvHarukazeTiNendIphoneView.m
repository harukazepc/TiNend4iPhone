/**
 * Appcelerator Titanium Mobile
 * Copyright (c) 2009-2010 by Appcelerator, Inc. All Rights Reserved.
 * Licensed under the terms of the Apache Public License
 * Please see the LICENSE included with this distribution for details.
 */

#import "TvHarukazeTiNendIphoneView.h"
#import "TiApp.h"
#import "TiUtils.h"

@implementation TvHarukazeTiNendIphoneView

#pragma mark -
#pragma mark Ad Lifecycle

-(void)refreshAd:(CGRect)bounds
{
    if (nadView != nil) {
        [nadView removeFromSuperview];
        [nadView setDelegate:nil];
//        [nadView release];
        RELEASE_TO_NIL(nadView); // Titanium Macro for release & set nil
    }
    nadView = [[NADView alloc] initWithFrame:bounds];
    
    NSString* apiKey = [self.proxy valueForKey:@"apiKey"];
    NSString* spotID = [self.proxy valueForKey:@"spotID"];
    [nadView setNendID:apiKey spotID:spotID];
    
    [self addSubview:nadView];
    
    [nadView setDelegate:self];
    [nadView setRootViewController:[[TiApp app] controller]];
    [nadView load:nil];
//    nadView.delegate = self;
    //[nadView autorelease];
}

-(void)frameSizeChanged:(CGRect)frame bounds:(CGRect)bounds
{
    [self refreshAd:bounds];
}

-(void)dealloc
{
    if (nadView != nil) {
        [nadView removeFromSuperview];
        [nadView setDelegate:nil];
//        [nadView release];
        RELEASE_TO_NIL(nadView); // Titanium Macro for release & set nil
    }
    [super dealloc];
}

- (void)nadViewDidFinishLoad:(NADView *)adView;
{
}
@end
