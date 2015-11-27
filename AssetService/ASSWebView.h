//
//  ASSWebView.h
//  AssetService
//
//  Created by Maisa Solutions on 11/26/15.
//  Copyright © 2015 Maisa Solutions. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ASSWebView : UIView<UIWebViewDelegate>

@property (nonatomic, strong) UIWebView *webView;
+(ASSWebView*)sharedInstance;
-(void)addWebviewWithUrl:(NSURL *)url;
@end
