//
//  OPGradient.h
//  OPQuartzKit
//
//  Created by Brandon Williams on 1/14/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface OPGradient : NSObject

@property (nonatomic, readonly) CGGradientRef CGGradient;

+(id) gradientWithColors:(NSArray*)colors;
+(id) gradientWithColors:(NSArray *)colors locations:(NSArray*)locations;

-(void) fillRectLinearly:(CGRect)rect;
-(void) fillRectLinearly:(CGRect)rect options:(CGGradientDrawingOptions)options;
-(void) fillRectLinearly:(CGRect)rect options:(CGGradientDrawingOptions)options startPoint:(CGPoint)startPoint endPoint:(CGPoint)endPoint;

-(void) fillRectRadially:(CGRect)rect;
-(void) fillRectRadially:(CGRect)rect options:(CGGradientDrawingOptions)options;
-(void) fillRectRadially:(CGRect)rect 
                 options:(CGGradientDrawingOptions)options 
              startPoint:(CGPoint)startPoint 
             startRadius:(CGFloat)startRadius
                endPoint:(CGPoint)endPoint
               endRadius:(CGFloat)endRadius;

@end
