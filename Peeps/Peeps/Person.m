// Copyright (C) 2021 About Objects, Inc. All Rights Reserved.
// See LICENSE.txt for this project's licensing information.

#import "Person.h"

@implementation Person

- (void)experiments {
    
    [self setFirstName:@"Fred"];
    
    NSString *s1 = [NSString stringWithFormat:@"%@ %@", [self firstName], [self lastName]];
    
    NSLog(@"%@", s1);
}

- (NSString *)firstName {
    return _firstName;
}
- (void)setFirstName:(NSString *)newValue {
    // TODO: Handle memory management and safety issues
    _firstName = newValue;
}

- (NSString *)lastName {
    return _lastName;
}
- (void)setLastName:(NSString *)newValue {
    _lastName = newValue;
}

- (NSString *)fullName {
    return [NSString stringWithFormat:@"%@ %@", [self firstName], [self lastName]];
}

- (NSString *)description
{
    return [NSString stringWithFormat:@"%@", [self fullName]];
}

@end
