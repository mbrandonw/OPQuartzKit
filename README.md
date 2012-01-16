#OPQuartzKit - 

OPQuartzKit contains all of the low level Core Graphics and Quartz drawing code we developed over the years. There isn't much here right now, but `OPGradient` is definitely worth checking out.

##`OPGradient`

`OPGradient` is an Objective-C wrapper of the low level `CGGradientRef` type and related functions. You can think of it as being analagous to the `UIBezierPath` class (presumably) wrapping the `CGPathRef` type and related functions. In fact, it would be pretty great if Apple released something like "`UIGradient`" soon.

The class mostly consists of a few convinience constructors and drawing methods. In a subclass of a `UIView` you could override the `-drawRect:` method with something like:

	-(void) drawRect:(CGRect)rect {
		NSArray *colors = [NSArray arrayWithObjects:[UIColor redColor], [UIColor blueColor], [UIColor greenColor], nil];
		[[OPGradient gradientWithColors:colors] fillRectLinearly:rect];
	}

There are corresponding methods for creating gradients with fully defined stops, and for fill gradients radially.

##Installation

We love [CocoaPods](http://github.com/cocoapods/cocoapods), so we recommend you use it.

##Demo

Checkout [OPKitDemo](http://www.opetopic.com) for a demo application using OPExtensionKit, among other things.

##Author

Brandon Williams  
brandon@opetopic.com  
[www.opetopic.com](http://www.opetopic.com)
