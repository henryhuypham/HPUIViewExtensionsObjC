//
//  HPLabel.h
//  Pods
//
//  Created by Huy Pham on 11/10/15.
//
//

#import <UIKit/UIKit.h>
#import "UIInternalProxy.h"

IB_DESIGNABLE
@interface HPLabel : UILabel

@property (nonatomic, retain) UIInternalProxy *internalProxy;

#pragma mark Border
@property (nonatomic, assign) IBInspectable UIColor *borderColor;
@property (nonatomic, assign) IBInspectable CGFloat borderWidth;

#pragma mark Corner
@property (nonatomic, assign) IBInspectable CGFloat cornerRadius;
@property (nonatomic, assign) IBInspectable BOOL    topLeftRounded;
@property (nonatomic, assign) IBInspectable BOOL    topRightRounded;
@property (nonatomic, assign) IBInspectable BOOL    bottomLeftRounded;
@property (nonatomic, assign) IBInspectable BOOL    bottomRightRounded;

#pragma mark Padding
@property (nonatomic, assign) IBInspectable CGFloat paddingStart;
@property (nonatomic, assign) IBInspectable CGFloat paddingEnd;

@end
