//
//  RNKustomerModule.h
//  RNKustomerModule
//
//  Created by Aleksandras Smirnovas on 22/07/2018.
//  Copyright © 2018 Miror MB. All rights reserved.
//

#import <Foundation/Foundation.h>

#if __has_include(<React/RCTBridgeModule.h>)
#import <React/RCTBridgeModule.h>
#else
#import "RCTBridgeModule.h"
#endif

@interface RNKustomerModule : NSObject <RCTBridgeModule>

@end
