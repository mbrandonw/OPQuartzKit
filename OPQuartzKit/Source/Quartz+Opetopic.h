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

BOOL CGSizeIsPowerOfTwo(CGSize size);
