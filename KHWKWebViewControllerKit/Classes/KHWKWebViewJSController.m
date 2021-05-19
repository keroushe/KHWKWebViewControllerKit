//
//  KHWKWebViewJSController.m
//  Video
//
//  Created by saina on 2020/12/14.
//  Copyright © 2020 cnest. All rights reserved.
//

#import "KHWKWebViewJSController.h"

@interface KHWKWebViewJSController ()

@end

@implementation KHWKWebViewJSController

#pragma mark - <WKScriptMessageHandler>
//拦截执行网页中的JS方法
//被自定义的WKScriptMessageHandler在回调方法里通过代理回调回来，绕了一圈就是为了解决内存不释放的问题
//通过接收JS传出消息的name进行捕捉的回调方法
- (void)userContentController:(WKUserContentController *)userContentController didReceiveScriptMessage:(WKScriptMessage *)message
{
    // 服务器固定格式写法 window.webkit.messageHandlers.名字.postMessage(内容);
    // 客户端写法 message.name isEqualToString:@"名字"]
    NSLog(@"name:%@\\\\n body:%@\\\\n frameInfo:%@\\\\n",message.name,message.body,message.frameInfo);
    // 用message.body获得JS传出的参数体
    NSDictionary * parameter = message.body;
    // JS调用OC
    if([message.name isEqualToString:@"jsToOcWithPrams"])
    {
        NSLog(@"parameter = %@", parameter);
    }
    if (self.jsCallbackHandle)
    {
        self.jsCallbackHandle(parameter);
    }
}

#pragma mark - TEST
//OC调用JS
- (void)ocToJs
{
    //changeColor()是JS方法名，completionHandler是异步回调block
    NSString *jsString = [NSString stringWithFormat:@"changeColor('%@')", @"Js颜色参数"];
    [self.wkWebView evaluateJavaScript:jsString completionHandler:^(id _Nullable data, NSError * _Nullable error) {
        NSLog(@"改变HTML的背景色");
    }];
    
    //改变字体大小 调用原生JS方法
    NSString *jsFont = [NSString stringWithFormat:@"document.getElementsByTagName('body')[0].style.webkitTextSizeAdjust= '%d%%'", arc4random()%99 + 100];
    [self.wkWebView evaluateJavaScript:jsFont completionHandler:nil];
    
    NSString * path =  [[NSBundle mainBundle] pathForResource:@"girl" ofType:@"png"];
    NSString *jsPicture = [NSString stringWithFormat:@"changePicture('%@','%@')", @"pictureId",path];
    [self.wkWebView evaluateJavaScript:jsPicture completionHandler:^(id _Nullable data, NSError * _Nullable error) {
        NSLog(@"切换本地头像");
    }];
}

@end
