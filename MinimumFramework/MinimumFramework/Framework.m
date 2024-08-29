//
//  Framework.m
//  MinimumFramework
//
//  Created by jxiong on 2024/08/29.
//

#import <Foundation/Foundation.h>
#import "MinimumFramework-Swift.h"
#import "Framework.h"

const char* getIdfv(void) {
    NSLog(@"%s", __func__);
    return [FrameworkUtil copyStringForMono:[[FrameworkAuthBridge shared] idfv]];
}
