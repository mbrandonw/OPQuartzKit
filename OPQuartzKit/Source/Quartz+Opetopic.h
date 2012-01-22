//
//  Quartz+Opetopic.h
//  OPQuartzKit
//
//  Created by Brandon Williams on 1/14/12.
//  Copyright (c) 2012 Opetopic. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <QuartzCore/QuartzCore.h>

CATransform3D CATransform3DMakePerspective(CGFloat d);

CGRect CGRectTranslate(CGRect r, CGFloat tx, CGFloat ty);
CGRect CGRectInsetEdges(CGRect r, UIEdgeInsets inset);

CGPoint CGRectCenter(CGRect r);
CGPoint CGRectTopCenter(CGRect r);
CGPoint CGRectBottomCenter(CGRect r);
CGPoint CGRectLeftCenter(CGRect r);
CGPoint CGRectRightCenter(CGRect r);

CGPoint CGPointIntegral(CGPoint p);

BOOL CGSizeIsPowerOfTwo(CGSize size);
