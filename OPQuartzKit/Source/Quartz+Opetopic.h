//
//  Quartz+Opetopic.h
//  OPQuartzKit
//
//  Created by Brandon Williams on 1/14/12.
//  Copyright (c) 2012 Opetopic. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <QuartzCore/QuartzCore.h>

#define CGPointMax  CGPointMake(MAXFLOAT, MAXFLOAT)

/**
 Pixel measurement of an "atom", i.e. 1 for non-retina, 0.5 for retina.
 */
#define CGAtom      (1.0f/[[UIScreen mainScreen] scale])

CATransform3D CATransform3DMakePerspective(CGFloat d);
CATransform3D CATransform3DApplyPerspective(CATransform3D t, CGFloat d);

CGRect CGRectTranslate(CGRect r, CGFloat tx, CGFloat ty);
CGRect CGRectInsetEdges(CGRect r, CGFloat top, CGFloat left, CGFloat bottom, CGFloat right);

CGPoint CGRectCenterPoint(CGRect r);
CGPoint CGRectTopCenter(CGRect r);
CGPoint CGRectBottomCenter(CGRect r);
CGPoint CGRectLeftCenter(CGRect r);
CGPoint CGRectRightCenter(CGRect r);

CGSize CGSizeInsetEdges(CGSize size, UIEdgeInsets inset);

CGPoint CGPointIntegral(CGPoint p);
CGPoint CGPointAdd(CGPoint a, CGPoint b);
CGPoint CGPointSubtract(CGPoint a, CGPoint b);
CGPoint CGPointNormalize(CGPoint p);
CGFloat CGPointLength(CGPoint p);

BOOL CGSizeIsPowerOfTwo(CGSize size);
CGSize CGSizeRound(CGSize size);
CGSize CGSizeFloor(CGSize size);
CGSize CGSizeCeil(CGSize size);