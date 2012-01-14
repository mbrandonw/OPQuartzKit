//
//  OPGradient.m
//  OPQuartzKit
//
//  Created by Brandon Williams on 1/14/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "OPGradient.h"
#import "Quartz+Opetopic.h"

@interface OPGradient (/**/)
@property (nonatomic, readwrite) CGGradientRef CGGradient;
@end

@implementation OPGradient

@synthesize CGGradient;

+(id) gradientWithColors:(NSArray *)colors {
    
    return [[self class] gradientWithColors:colors locations:nil];
}

+(id) gradientWithColors:(NSArray *)colors locations:(NSArray *)locations {
    
    NSMutableArray *cgColors = [NSMutableArray arrayWithCapacity:[colors count]];
    for (UIColor *color in colors)
        [cgColors addObject:(id)color.CGColor];
    
    CGFloat *cgLocations = NULL;
    if (locations)
    {
        cgLocations = malloc(sizeof(CGFloat) * [locations count]);
        for (NSUInteger i = 0; i < [locations count]; i++)
            cgLocations[i] = [[locations objectAtIndex:i] floatValue];
    }
    
    OPGradient *gradient = [OPGradient new];
    CGGradientRef gradientRef = CGGradientCreateWithColors(CGColorGetColorSpace((__bridge CGColorRef)[cgColors lastObject]),
                                                           (__bridge CFArrayRef)cgColors, 
                                                           cgLocations);
    gradient.CGGradient = gradientRef;
    CGGradientRelease(gradientRef);
    
    // clean up memory
    if (cgLocations)
        free(cgLocations), cgLocations = NULL;
    
    return gradient;
}


-(void) fillRectLinearly:(CGRect)rect {
    [self fillRectLinearly:rect options:0];
}

-(void) fillRectLinearly:(CGRect)rect options:(CGGradientDrawingOptions)options {
    
    [self fillRectLinearly:rect options:options startPoint:CGRectTopCenter(rect) endPoint:CGRectBottomCenter(rect)];
}

-(void) fillRectLinearly:(CGRect)rect options:(CGGradientDrawingOptions)options startPoint:(CGPoint)startPoint endPoint:(CGPoint)endPoint {
    
    CGContextRef c = UIGraphicsGetCurrentContext();
    CGContextSaveGState(c);
    {
        CGContextClipToRect(c, rect);
        CGContextDrawLinearGradient(c, self.CGGradient, startPoint, endPoint, options);
    }
    CGContextRestoreGState(c);
}

-(void) fillRectRadially:(CGRect)rect {
    [self fillRectRadially:rect options:kCGGradientDrawsAfterEndLocation];
}

-(void) fillRectRadially:(CGRect)rect options:(CGGradientDrawingOptions)options {
    
    [self fillRectRadially:rect 
                   options:options
                startPoint:CGRectCenter(rect)
               startRadius:0.0f 
                  endPoint:CGRectCenter(rect) 
                 endRadius:MAX(rect.size.width, rect.size.height)/2.0f];
}

-(void) fillRectRadially:(CGRect)rect options:(CGGradientDrawingOptions)options startPoint:(CGPoint)startPoint startRadius:(CGFloat)startRadius endPoint:(CGPoint)endPoint endRadius:(CGFloat)endRadius {
    
    CGContextRef c = UIGraphicsGetCurrentContext();
    CGContextSaveGState(c);
    {
        CGContextClipToRect(c, rect);
        CGContextDrawRadialGradient(c, self.CGGradient, startPoint, startRadius, endPoint, endRadius, options);
    }
    CGContextRestoreGState(c);
}

#pragma mark -
#pragma mark Custom getters/setters
#pragma mark -

-(void) setCGGradient:(CGGradientRef)g {
    if (g != self.CGGradient)
    {
        if (self.CGGradient)
            CGGradientRelease(self.CGGradient);
        CGGradient = CGGradientRetain(g);
    }
}

#pragma mark -
#pragma mark Memory management
#pragma mark -

-(void) dealloc {
    if (CGGradient)
    {
        CGGradientRelease(CGGradient);
        CGGradient = NULL;
    }
}


@end
