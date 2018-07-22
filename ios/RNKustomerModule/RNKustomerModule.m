//
//  RNKustomerModule.m
//  RNKustomerModule
//
//  Created by Aleksandras Smirnovas on 22/07/2018.
//  Copyright © 2018 Miror MB. All rights reserved.
//

#import "RNKustomerModule.h"
#import <Kustomer/Kustomer.h>

@implementation RNKustomerModule

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


@end
