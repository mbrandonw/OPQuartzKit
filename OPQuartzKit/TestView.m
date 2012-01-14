//
//  TestView.m
//  OPQuartzKit
//
//  Created by Brandon Williams on 1/14/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "TestView.h"
#import "OPGradient.h"
#import "Quartz+Opetopic.h"

@implementation TestView

-(void) drawRect:(CGRect)rect {
    
    OPGradient *gradient = [OPGradient gradientWithColors:[NSArray arrayWithObjects:[UIColor lightGrayColor], [UIColor darkGrayColor], nil] 
                                                locations:[NSArray arrayWithObjects:[NSNumber numberWithFloat:0.2f], [NSNumber numberWithFloat:0.8f], nil]];
    
    [gradient fillRectLinearly:rect];
}

@end
