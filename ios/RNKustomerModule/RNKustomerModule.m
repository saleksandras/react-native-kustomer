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
RCT_EXPORT_METHOD(presentSupport)
{
  dispatch_async(dispatch_get_main_queue(), ^{
    [Kustomer presentSupport];
  });
}
RCT_EXPORT_METHOD(presentKnowledgeBase)
{
  dispatch_async(dispatch_get_main_queue(), ^{
    [Kustomer presentKnowledgeBase];
  });
}
RCT_EXPORT_METHOD(presentCustomWebPage:(NSString *) url)
{
  dispatch_async(dispatch_get_main_queue(), ^{
    [Kustomer presentCustomWebPage:url];
  });
}
RCT_EXPORT_METHOD(resetTracking)
{
  dispatch_async(dispatch_get_main_queue(), ^{
    [Kustomer resetTracking];
  });
}
RCT_EXPORT_METHOD(identify:(NSString *) hash)
{
  dispatch_async(dispatch_get_main_queue(), ^{
    [Kustomer identify:hash];
  });
}
RCT_EXPORT_METHOD(setCurrentPageName:(NSString *) pageName)
{
  dispatch_async(dispatch_get_main_queue(), ^{
      [Kustomer setCurrentPageName:pageName];
  });
}
@end
