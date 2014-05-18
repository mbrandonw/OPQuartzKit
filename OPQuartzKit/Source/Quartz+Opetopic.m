//
//  Quartz+Opetopic.m
//  OPQuartzKit
//
//  Created by Brandon Williams on 1/14/12.
//  Copyright (c) 2012 Opetopic. All rights reserved.
//

#import "Quartz+Opetopic.h"

CATransform3D CATransform3DMakePerspective(CGFloat d) {
    
    CATransform3D t = CATransform3DIdentity;
    t.m34 = -1.0f / d;
    return t;
}

CATransform3D CATransform3DApplyPerspective(CATransform3D t, CGFloat d) {
    return CATransform3DConcat(t, CATransform3DMakePerspective(d));
}

CGAffineTransform UIInterfaceOrientationToAffineTransform(UIInterfaceOrientation orientation) {
  switch (orientation) {
    case UIInterfaceOrientationPortrait:
      return CGAffineTransformIdentity;
    case UIInterfaceOrientationPortraitUpsideDown:
      return CGAffineTransformMake(-1.0f, 0.0f, 0.0f, -1.0f, 0.0f, 0.0f);
    case UIInterfaceOrientationLandscapeLeft:
      return CGAffineTransformMake(0.0f, -1.0f, 1.0f, 0.0f, 0.0f, 0.0f);
    case UIInterfaceOrientationLandscapeRight:
      return CGAffineTransformMake(0.0f, 1.0f, -1.0f, 0.0f, 0.0f, 0.0f);
  }
}

CGRect CGRectTranslate(CGRect r, CGFloat tx, CGFloat ty) {
    return CGRectMake(r.origin.x+tx, r.origin.y+ty, r.size.width, r.size.height);
}

CGRect CGRectInsetEdges(CGRect r, CGFloat top, CGFloat left, CGFloat bottom, CGFloat right) {
    return CGRectMake(r.origin.x+left, r.origin.y+top, r.size.width-left-right, r.size.height-top-bottom);
}

CGPoint CGRectCenterPoint(CGRect r) {
    return CGPointMake(r.origin.x + r.size.width/2.0f, r.origin.y + r.size.height/2.0f);
}

CGPoint CGRectTopCenter(CGRect r) {
    return CGPointMake(r.origin.x + r.size.width/2.0f, r.origin.y);
}

CGPoint CGRectBottomCenter(CGRect r) {
    
    return CGPointMake(r.origin.x + r.size.width/2.0f, r.origin.y + r.size.height);
}

CGPoint CGRectLeftCenter(CGRect r) {
    return CGPointMake(r.origin.x, r.origin.y + r.size.height/2.0f);
}

CGPoint CGRectRightCenter(CGRect r) {
    return CGPointMake(r.origin.x + r.size.width, r.origin.y + r.size.height/2.0f);
}

CGSize CGSizeInsetEdges(CGSize size, UIEdgeInsets inset) {
    return CGSizeMake(size.width-inset.left-inset.right, size.height-inset.top-inset.bottom);
}

CGPoint CGPointIntegral(CGPoint p) {
    return CGPointMake(roundf(p.x), roundf(p.y));
}

CGPoint CGPointAdd(CGPoint a, CGPoint b) {
  return CGPointMake(a.x+b.x, a.y+b.y);
}

CGPoint CGPointSubtract(CGPoint a, CGPoint b) {
  return CGPointMake(a.x - b.x, a.y - b.y);
}

CGPoint CGPointNormalize(CGPoint p) {
  CGFloat length = CGPointLength(p);
  if (length == 0.0f) {
    return CGPointZero;
  }
  return CGPointMake(p.x / length, p.y / length);
}

CGFloat CGPointLength(CGPoint p) {
  return sqrtf(p.x * p.x + p.y * p.y);
}

BOOL CGSizeIsPowerOfTwo(CGSize size) {
    
    NSUInteger w = (NSUInteger)roundf(size.width);
    NSUInteger h = (NSUInteger)roundf(size.height);
    return w>0 && h>0 && (w & (w-1)) == 0 && (h & (h-1)) == 0;
}

CGSize CGSizeRound(CGSize size) {
  return CGSizeMake(roundf(size.width), roundf(size.height));
}

CGSize CGSizeFloor(CGSize size) {
  return CGSizeMake(floorf(size.width), floorf(size.height));
}

CGSize CGSizeCeil(CGSize size) {
  return CGSizeMake(ceilf(size.width), ceilf(size.height));
}