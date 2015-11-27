//
//  ASSAPIConnector.m
//  AssetService
//
//  Created by Maisa Solutions on 11/26/15.
//  Copyright © 2015 Maisa Solutions. All rights reserved.
//

#import "ASSAPIConnector.h"
#import "ASSConstants.h"
@implementation ASSAPIConnector

+(ASSAPIConnector*)sharedInstance {
    static ASSAPIConnector *sharedInstance = nil;
    static dispatch_once_t oncePredicate;
    dispatch_once(&oncePredicate, ^{
        sharedInstance = [[self alloc] init];
    });
    
    return sharedInstance;
}
-(void)performDataURLRequestAsync:(NSURLRequest *)request onCompletion:(JSONResponseBlock)completionBlock
{
    AFHTTPRequestOperation *operation = [[AFHTTPRequestOperation alloc] initWithRequest:request];
    operation.responseSerializer = [AFJSONResponseSerializer serializer];
    
    [operation setCompletionBlockWithSuccess:^(AFHTTPRequestOperation *operation, id responseObject)
     {
         completionBlock(responseObject);
         
         
     }
                                     failure:^(AFHTTPRequestOperation *operation, NSError *error, id responseObject)
     {
         completionBlock([NSDictionary dictionaryWithObject:[error localizedDescription] forKey:@"error"]);
         
     }];
    [operation start];

}
@end
