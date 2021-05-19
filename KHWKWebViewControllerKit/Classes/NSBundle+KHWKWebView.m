//
//  NSBundle+KHWKWebView.m
//  KHWKWebViewControllerKit
//
//  Created by hexs on 2021/5/19.
//

#import "NSBundle+KHWKWebView.h"
#import "KHWKWebViewController.h"

@implementation NSBundle (KHWKWebView)

+ (instancetype)kh_wkWebBundle
{
    static NSBundle *wkWebBundle = nil;
    if (wkWebBundle == nil) {
        wkWebBundle = [NSBundle bundleWithPath:[[NSBundle bundleForClass:[KHWKWebViewController class]] pathForResource:@"KHWKWebView" ofType:@"bundle"]];
    }
    return wkWebBundle;
}

@end
