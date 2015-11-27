//
//  ASSAPIConnector.h
//  AssetService
//
//  Created by Maisa Solutions on 11/26/15.
//  Copyright © 2015 Maisa Solutions. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AFNetworking.h"

typedef void (^JSONResponseBlock)(NSDictionary* json);

@interface ASSAPIConnector : NSObject

+(ASSAPIConnector*)sharedInstance;
-(void)performDataURLRequestAsync:(NSURLRequest *)request onCompletion:(JSONResponseBlock)completionBlock;
@end
