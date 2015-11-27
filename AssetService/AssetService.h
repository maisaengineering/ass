//
//  AssetService.h
//  AssetService
//
//  Created by Maisa Solutions on 11/16/15.
//  Copyright © 2015 Maisa Solutions. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AssetService : NSObject


//! Project version number for AssetService.
FOUNDATION_EXPORT double AssetServiceVersionNumber;

//! Project version string for AssetService.
FOUNDATION_EXPORT const unsigned char AssetServiceVersionString[];

// In this header, you should import all the public headers of your framework using statements like #import <AssetService/PublicHeader.h>
+ (void)setApplicationId:(NSString *)applicationId clientKey:(NSString *)clientKey;

@end
