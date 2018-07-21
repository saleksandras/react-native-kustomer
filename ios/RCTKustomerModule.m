//
//  RCTKustomerModule.m
//
//  Created by Aleksandras Smirnovas on 18/07/2018.
//

#import "RCTKustomerModule.h"
#import <Kustomer/Kustomer.h>

@implementation RCTKustomerModule

RCT_EXPORT_MODULE();

RCT_EXPORT_METHOD(presentSupport)
{
    [Kustomer presentSupport];
}

RCT_EXPORT_METHOD(presentKnowledgeBase)
{
    [Kustomer presentKnowledgeBase];
}

RCT_EXPORT_METHOD(presentCustomWebPage:(NSString *) url)
{
    [Kustomer presentCustomWebPage:url];
}

RCT_EXPORT_METHOD(resetTracking)
{
    [Kustomer resetTracking];
}

RCT_EXPORT_METHOD(identify:(NSString *) hash)
{
    [Kustomer identify:hash];
}

RCT_EXPORT_METHOD(setCurrentPageName:(NSString *) pageName)
{
    [Kustomer setCurrentPageName:pageName];
}


// RCT_EXPORT_METHOD(isChatAvailable)
// {
//     [Kustomer isChatAvailable:^(BOOL success, BOOL enabled) {
//         return enabled;
//     }];
// }

@end
