//
//  WPWalkthroughGrayOverlayView.h
//  WordPress
//
//  Created by Sendhil Panchadsaram on 5/1/13.
//  Copyright (c) 2013 WordPress. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef NS_ENUM(NSUInteger, WPWalkthroughOverlayViewOverlayMode) {
    WPWalkthroughGrayOverlayViewOverlayModeTapToDismiss,
    WPWalkthroughGrayOverlayViewOverlayModeDoubleTapToDismiss,
    WPWalkthroughGrayOverlayViewOverlayModeTwoButtonMode,
};

typedef NS_ENUM(NSUInteger, WPWalkthroughOverlayViewIcon) {
    WPWalkthroughGrayOverlayViewWarningIcon,
    WPWalkthroughGrayOverlayViewBlueCheckmarkIcon,
};

@interface WPWalkthroughOverlayView : UIView

@property (nonatomic, assign) WPWalkthroughOverlayViewOverlayMode overlayMode;
@property (nonatomic, assign) WPWalkthroughOverlayViewIcon icon;
@property (nonatomic, strong) NSString *overlayTitle;
@property (nonatomic, strong) NSString *overlayDescription;
@property (nonatomic, strong) NSString *footerDescription;
@property (nonatomic, strong) NSString *secondaryButtonText;
@property (nonatomic, strong) NSString *primaryButtonText;
@property (nonatomic, assign) BOOL hideBackgroundView;

@property (nonatomic, copy) void (^singleTapCompletionBlock)(WPWalkthroughOverlayView *);
@property (nonatomic, copy) void (^doubleTapCompletionBlock)(WPWalkthroughOverlayView *);
@property (nonatomic, copy) void (^secondaryButtonCompletionBlock)(WPWalkthroughOverlayView *);
@property (nonatomic, copy) void (^primaryButtonCompletionBlock)(WPWalkthroughOverlayView *);

- (void)dismiss;

@end
