//
//  ASSHTTPURLRequestConstructor.h
//  AssetService
//
//  Created by Maisa Solutions on 11/26/15.
//  Copyright © 2015 Maisa Solutions. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ASSHTTPURLRequestConstructor : NSObject

+ (NSMutableURLRequest *)urlRequestWithURL:(NSURL *)url
                                httpMethod:(NSString *)httpMethod
                                parameters:(NSDictionary *)parameters;

@end
