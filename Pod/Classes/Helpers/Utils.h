//
//  Utils.h
//  Pods
//
//  Created by Huy Pham on 11/10/15.
//
//

#import <Foundation/Foundation.h>

@interface Utils : NSObject

+ (void)roundCorners:(UIView *)view withCorners:(UIRectCorner)corners andRadius:(CGFloat)radius;
+ (UIImage *)imageWithSolidColor:(UIColor *) color andSize:(CGSize)size;

@end
