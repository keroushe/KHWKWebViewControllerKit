#ifdef __OBJC__
#import <UIKit/UIKit.h>
#else
#ifndef FOUNDATION_EXPORT
#if defined(__cplusplus)
#define FOUNDATION_EXPORT extern "C"
#else
#define FOUNDATION_EXPORT extern
#endif
#endif
#endif

#import "KHWeakWebViewScriptMessageDelegate.h"
#import "KHWKWebViewController.h"
#import "KHWKWebViewJSController.h"
#import "NSBundle+KHWKWebView.h"

FOUNDATION_EXPORT double KHWKWebViewControllerKitVersionNumber;
FOUNDATION_EXPORT const unsigned char KHWKWebViewControllerKitVersionString[];

