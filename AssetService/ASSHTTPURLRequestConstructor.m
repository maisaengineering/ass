//
//  ASSHTTPURLRequestConstructor.m
//  AssetService
//
//  Created by Maisa Solutions on 11/26/15.
//  Copyright © 2015 Maisa Solutions. All rights reserved.
//

#import "ASSHTTPURLRequestConstructor.h"

@implementation ASSHTTPURLRequestConstructor
+ (NSMutableURLRequest *)urlRequestWithURL:(NSURL *)url
                                httpMethod:(NSString *)httpMethod
                                parameters:(NSDictionary *)parameters
{
    NSError* error;
    
    
    //convert object to data
    NSData* jsonData = [NSJSONSerialization dataWithJSONObject:parameters options:0  error:&error];
    
    //convert data to string
    NSString *jsonString = [[NSString alloc] initWithData:jsonData encoding:NSUTF8StringEncoding];
    
    
    
    NSMutableURLRequest *request = [NSMutableURLRequest requestWithURL:url];
    
    NSData *requestData = [jsonString dataUsingEncoding:NSUTF8StringEncoding];
    
    [request setHTTPMethod:httpMethod];
    [request setValue:@"application/json" forHTTPHeaderField:@"Accept"];
    [request setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];
    [request setValue:[NSString stringWithFormat:@"%lu", (unsigned long)[requestData length]] forHTTPHeaderField:@"Content-Length"];
    [request setHTTPBody: requestData];

    return request;
}
@end
