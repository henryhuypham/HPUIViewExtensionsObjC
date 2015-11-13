//
//  Utils.m
//  Pods
//
//  Created by Huy Pham on 11/10/15.
//
//

#import "Utils.h"

@implementation Utils

+ (void)roundCorners:(UIView *)view withCorners:(UIRectCorner)corners andRadius:(CGFloat)radius {
    UIBezierPath *path = [UIBezierPath bezierPathWithRoundedRect:view.bounds byRoundingCorners:corners cornerRadii:CGSizeMake(radius, radius)];
    CAShapeLayer *mask = [[CAShapeLayer alloc] init];
    mask.path = path.CGPath;
    view.layer.mask = mask;
    
    // Reset corner radius to make Bezier Path to work
    view.layer.cornerRadius = 0;
}

+ (UIImage *)imageWithSolidColor:(UIColor *)color andSize:(CGSize)size {
    CGRect rect = CGRectMake(0, 0, size.width, size.height);
    
    UIGraphicsBeginImageContextWithOptions(size, false, 0);
    [color setFill];
    UIRectFill(rect);
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    return image;
}

@end
