//
//  UIInternalProxy.h
//  Pods
//
//  Created by Huy Pham on 11/10/15.
//
//

#import <Foundation/Foundation.h>

@interface UIInternalProxy : NSObject

@property (nonatomic, assign) UIView *subjectView;

#pragma mark Border
@property (nonatomic, assign) UIColor *borderColor;
@property (nonatomic, assign) CGFloat borderWidth;

#pragma mark Corner
@property (nonatomic, assign) CGFloat cornerRadius;
@property (nonatomic, assign) BOOL topLeftRounded;
@property (nonatomic, assign) BOOL topRightRounded;
@property (nonatomic, assign) BOOL bottomLeftRounded;
@property (nonatomic, assign) BOOL bottomRightRounded;

#pragma mark Init
- (instancetype)init:(UIView *)subjectView;

#pragma mark Helpers
- (UIRectCorner)getRoundedConfig;

@end
