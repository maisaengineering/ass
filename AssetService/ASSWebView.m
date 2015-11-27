//
//  ASSWebView.m
//  AssetService
//
//  Created by Maisa Solutions on 11/26/15.
//  Copyright © 2015 Maisa Solutions. All rights reserved.
//

#import "ASSWebView.h"
#import "ASSConstants.h"
@implementation ASSWebView


+(ASSWebView*)sharedInstance {
    static ASSWebView *sharedInstance = nil;
    static dispatch_once_t oncePredicate;
    dispatch_once(&oncePredicate, ^{
        
        sharedInstance = [[self alloc] initWithFrame:ScreenRect];
        
    });
    
    return sharedInstance;
}
-(UIWebView *)webView
{
    if(!self.webView)
    {
        self.webView = [[UIWebView alloc] initWithFrame:ScreenRect];
        self.webView.delegate = self;
    }
    return self.webView;
}
-(void)addWebviewWithUrl:(NSURL *)url
{
    [self addSubview:self.webView];
    [[[UIApplication sharedApplication] keyWindow] addSubview:self];
}
#pragma mark -
#pragma mark WebView Delegate Methods
- (BOOL)webView:(UIWebView *)webView shouldStartLoadWithRequest:(NSURLRequest *)request navigationType:(UIWebViewNavigationType)navigationType
{
    return YES;
}
@end
