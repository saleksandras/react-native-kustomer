//
//  RCTKustomerModule.h
//
//  Created by Aleksandras Smirnovas on 18/07/2018.
//

#import <Foundation/Foundation.h>

#if __has_include(<React/RCTBridgeModule.h>)
#import <React/RCTBridgeModule.h>
#else
#import "RCTBridgeModule.h"
#endif

@interface RCTKustomerModule : NSObject <RCTBridgeModule>

@end
