//
//  QuartzTests.m
//  OPQuartzKit
//
//  Created by Brandon Williams on 1/22/12.
//  Copyright (c) 2012 Opetopic. All rights reserved.
//

#import "Quartz+Opetopic.h"

@interface QuartzTests : GHTestCase

@end

@implementation QuartzTests

-(void) testCGSizePowerOfTwo {
    
    GHAssertFalse(CGSizeIsPowerOfTwo(CGSizeMake(0.0f, 0.0f)), @"");
    GHAssertTrue(CGSizeIsPowerOfTwo(CGSizeMake(4.0f, 8.0f)), @"");
    GHAssertTrue(CGSizeIsPowerOfTwo(CGSizeMake(32.0f, 32.0f)), @"");
    GHAssertFalse(CGSizeIsPowerOfTwo(CGSizeMake(31.0f, 32.0f)), @"");
    GHAssertFalse(CGSizeIsPowerOfTwo(CGSizeMake(32.0f, 31.0f)), @"");
    GHAssertFalse(CGSizeIsPowerOfTwo(CGSizeMake(31.0f, 31.0f)), @"");
}

@end
