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

CGRect CGRectTranslate(CGRect r, CGFloat tx, CGFloat ty) {
    return CGRectMake(r.origin.x+tx, r.origin.y+ty, r.size.width, r.size.height);
}

CGRect CGRectInsetEdges(CGRect r, UIEdgeInsets inset) {
    return CGRectMake(r.origin.x+inset.left, r.origin.y+inset.top, r.size.width-inset.left-inset.right, r.size.height-inset.top-inset.bottom);
}

CGPoint CGRectCenter(CGRect r) {
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

CGPoint CGPointIntegral(CGPoint p) {
    return CGPointMake(roundf(p.x), roundf(p.y));
}

BOOL CGSizeIsPowerOfTwo(CGSize size) {
    
    NSUInteger w = (NSUInteger)roundf(size.width);
    NSUInteger h = (NSUInteger)roundf(size.height);
    return w>0 && h>0 && (w & (w-1)) == 0 && (h & (h-1)) == 0;
}
