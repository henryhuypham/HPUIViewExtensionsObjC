//
//  UIInternalProxy.m
//  Pods
//
//  Created by Huy Pham on 11/10/15.
//
//

#import "UIInternalProxy.h"
#import "Utils.h"

@implementation UIInternalProxy

- (instancetype)init:(UIView *)subjectView {
    self = [super init];
    
    if (self) {
        self.subjectView = subjectView;
    }
    return self;
}


#pragma mark Border

- (void)setBorderColor:(UIColor *)borderColor {
    _borderColor = borderColor;
    self.subjectView.layer.borderColor = borderColor.CGColor;
}

- (void)setBorderWidth:(CGFloat)borderWidth {
    _borderWidth = borderWidth;
    self.subjectView.layer.borderWidth = borderWidth;
}


#pragma mark Corner

- (void)setCornerRadius:(CGFloat)cornerRadius {
    _cornerRadius = cornerRadius;
    self.subjectView.layer.cornerRadius = cornerRadius;
    self.subjectView.layer.masksToBounds = YES;
}

- (void)setTopLeftRounded:(BOOL)topLeftRounded {
    _topLeftRounded = topLeftRounded;
    [Utils roundCorners:self.subjectView withCorners:[self getRoundedConfig] andRadius:_cornerRadius];
}

- (void)setTopRightRounded:(BOOL)topRightRounded {
    _topRightRounded = topRightRounded;
    [Utils roundCorners:self.subjectView withCorners:[self getRoundedConfig] andRadius:_cornerRadius];
}

- (void)setBottomLeftRounded:(BOOL)bottomLeftRounded {
    _bottomLeftRounded = bottomLeftRounded;
    [Utils roundCorners:self.subjectView withCorners:[self getRoundedConfig] andRadius:_cornerRadius];
}

- (void)setBottomRightRounded:(BOOL)bottomRightRounded {
    _bottomRightRounded = bottomRightRounded;
    [Utils roundCorners:self.subjectView withCorners:[self getRoundedConfig] andRadius:_cornerRadius];
}


#pragma mark Helpers

- (UIRectCorner)getRoundedConfig {
    UIRectCorner corner = 0;
    
    if (self.topLeftRounded) {
        corner |= UIRectCornerTopLeft;
    } else if (self.topRightRounded) {
        corner |= UIRectCornerTopRight;
    } else if (self.bottomLeftRounded) {
        corner |= UIRectCornerBottomLeft;
    } else if (self.bottomRightRounded) {
        corner |= UIRectCornerBottomRight;
    }
    
    return corner;
}

@end
