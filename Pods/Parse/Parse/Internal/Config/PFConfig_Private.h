/**
 * Copyright (c) 2015-present, Parse, LLC.
 * All rights reserved.
 *
 * This source code is licensed under the BSD-style license found in the
 * LICENSE file in the root directory of this source tree. An additional grant
 * of patent rights can be found in the PATENTS file in the same directory.
 */

#import <Foundation/Foundation.h>

#if TARGET_OS_IPHONE
#import <Parse/PFConfig.h>
#else
#import <ParseOSX/PFConfig.h>
#endif

NSString *const PFConfigParametersRESTKey;

@interface PFConfig (Private)

@property (atomic, copy, readonly) NSDictionary *parametersDictionary;

- (instancetype)initWithFetchedConfig:(NSDictionary *)config;

@end
