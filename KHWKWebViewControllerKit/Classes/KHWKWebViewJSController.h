//
//  KHWKWebViewJSController.h
//  Video
//
//  Created by saina on 2020/12/14.
//  Copyright © 2020 cnest. All rights reserved.
//

#import "KHWKWebViewController.h"

NS_ASSUME_NONNULL_BEGIN

@interface KHWKWebViewJSController : KHWKWebViewController

@property (nonatomic, copy) void(^jsCallbackHandle)(NSDictionary * parameter);

@end

NS_ASSUME_NONNULL_END
