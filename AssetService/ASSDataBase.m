//
//  ASSDataBase.m
//  AssetService
//
//  Created by Maisa Solutions on 11/26/15.
//  Copyright © 2015 Maisa Solutions. All rights reserved.
//

#import "ASSDataBase.h"

@implementation ASSDataBase
+(ASSDataBase*)sharedInstance
{
    static ASSDataBase *sharedInstance = nil;
    static dispatch_once_t oncePredicate;
    dispatch_once(&oncePredicate, ^{
        sharedInstance = [[self alloc] init];
    });
    
    return sharedInstance;
}
@end
