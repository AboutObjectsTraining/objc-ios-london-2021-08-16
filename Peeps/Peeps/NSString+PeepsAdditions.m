// Copyright (C) 2021 About Objects, Inc. All Rights Reserved.
// See LICENSE.txt for this project's licensing information.

#import "NSString+PeepsAdditions.h"

@implementation NSString (PeepsAdditions)

- (void)xyz_bark {
    printf("%s Woof! Woof!\n", [self UTF8String]);
}

@end
