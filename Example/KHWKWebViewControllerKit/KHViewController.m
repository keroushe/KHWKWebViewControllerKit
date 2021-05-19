//
//  KHViewController.m
//  KHWKWebViewControllerKit
//
//  Created by keroushe on 05/19/2021.
//  Copyright (c) 2021 keroushe. All rights reserved.
//

#import "KHViewController.h"
#import <KHWKWebViewControllerKit/KHWKWebViewController.h>

@interface KHViewController ()

@end

@implementation KHViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    
    KHWKWebViewController *webVC = [[KHWKWebViewController alloc] init];
    [webVC loadWebURLSring:@"https://www.baidu.com"];
    [self.navigationController pushViewController:webVC animated:YES];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
