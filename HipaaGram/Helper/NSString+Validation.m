/*
 * Copyright (C) 2015 Catalyze, Inc.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 *    you may not use this file except in compliance with the License.
 *    You may obtain a copy of the License at
 *
 *        http://www.apache.org/licenses/LICENSE-2.0
 *
 *    Unless required by applicable law or agreed to in writing, software
 *    distributed under the License is distributed on an "AS IS" BASIS,
 *    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 *    See the License for the specific language governing permissions and
 *    limitations under the License.
 */

#import "NSString+Validation.h"

@implementation NSString (Validation)

// http://stackoverflow.com/questions/3139619/check-that-an-email-address-is-valid-on-ios
-(BOOL)isValidEmail {
    NSString *laxRegex = @"^.+@([A-Za-z0-9-]+\\.)+[A-Za-z]{2}[A-Za-z]*$";
    NSPredicate *emailTest = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", laxRegex];
    return [emailTest evaluateWithObject:self];
}

@end