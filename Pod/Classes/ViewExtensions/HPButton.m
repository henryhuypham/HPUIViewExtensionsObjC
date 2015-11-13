//
//  HPButton.m
//  Pods
//
//  Created by Huy Pham on 11/10/15.
//
//

#import "HPButton.h"
#import "Utils.h"

@implementation HPButton

- (instancetype)initWithCoder:(NSCoder *)coder {
    self = [super initWithCoder:coder];
    if (self) {
        self.internalProxy = [[UIInternalProxy alloc] init:self];
    }
    return self;
}

- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        self.internalProxy = [[UIInternalProxy alloc] init:self];
    }
    return self;
}


#pragma mark Border

- (void)setBorderColor:(UIColor *)borderColor {
    _borderColor = borderColor;
    self.internalProxy.borderColor = borderColor;
}

- (void)setBorderWidth:(CGFloat)borderWidth {
    _borderWidth = borderWidth;
    self.internalProxy.borderWidth = borderWidth;
}


#pragma mark Corner

- (void)setCornerRadius:(CGFloat)cornerRadius {
    _cornerRadius = cornerRadius;
    self.internalProxy.cornerRadius = cornerRadius;
}

- (void)setTopLeftRounded:(BOOL)topLeftRounded {
    _topLeftRounded = topLeftRounded;
    self.internalProxy.topLeftRounded = topLeftRounded;
}

- (void)setTopRightRounded:(BOOL)topRightRounded {
    _topRightRounded = topRightRounded;
    self.internalProxy.topRightRounded = topRightRounded;
}

- (void)setBottomLeftRounded:(BOOL)bottomLeftRounded {
    _bottomLeftRounded = bottomLeftRounded;
    self.internalProxy.bottomLeftRounded = bottomLeftRounded;
}

- (void)setBottomRightRounded:(BOOL)bottomRightRounded {
    _bottomRightRounded = bottomRightRounded;
    self.internalProxy.bottomRightRounded = bottomRightRounded;
}


#pragma mark Background

- (void)setBgColor:(UIColor *)bgColor {
    _bgColor = bgColor;
    [self setBackgroundImage:[Utils imageWithSolidColor:bgColor andSize:self.bounds.size] forState:UIControlStateNormal];
    [self setBackgroundImage:[Utils imageWithSolidColor:self.tintColor andSize:self.bounds.size] forState:UIControlStateHighlighted];
}


#pragma mark Button Image

- (void)setButtonImage:(UIImage *)buttonImage {
    _buttonImage = buttonImage;
    [[self imageView] setContentMode: UIViewContentModeScaleAspectFit];
    [self setImage:buttonImage forState:UIControlStateNormal];
    [self setImage:buttonImage forState:UIControlStateHighlighted];
}

@end
