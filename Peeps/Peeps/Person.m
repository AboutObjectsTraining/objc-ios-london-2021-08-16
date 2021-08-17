// Copyright (C) 2021 About Objects, Inc. All Rights Reserved.
// See LICENSE.txt for this project's licensing information.

#import "Person.h"
#import "Dog.h"

@implementation Person

// Convenience initializer
- (instancetype)initWithFirstName:(NSString *)firstName
                         lastName:(NSString *)lastName {
    return [self initWithFirstName:firstName lastName:lastName age:0];
}

// Designated initializer
- (instancetype)initWithFirstName:(NSString *)firstName
                         lastName:(NSString *)lastName
                              age:(NSInteger)age {
    self = [super init];
    if (self == nil) return nil;
    
    // Initialize ivars
    _firstName = [firstName copy];
    _lastName = [lastName copy];
    _age = age;
    
    return self;
}

// Factory method
+ (instancetype)personWithFirstName:(NSString *)firstName lastName:(NSString *)lastName age:(NSInteger)age {
    return [[self alloc] initWithFirstName:firstName lastName:lastName age:age];
}

- (NSString *)fullName {
    return [NSString stringWithFormat:@"%@ %@", self.firstName, self.lastName];
}

- (NSString *)description
{
    return [NSString stringWithFormat:@"%@, age: %@", self.fullName, @(self.age)];
}

- (BOOL)respondsToSelector:(SEL)aSelector {
    if ([super respondsToSelector:aSelector]) {
        return YES;
    }
    return [self.dog respondsToSelector:aSelector];
}

- (id)forwardingTargetForSelector:(SEL)aSelector {
    if ([self.dog respondsToSelector:aSelector]) {
        return self.dog;
    }
    return [super forwardingTargetForSelector:aSelector];
}

- (instancetype)copyWithZone:(NSZone *)zone {
    Person *newPerson = [[[self class] alloc] init];
    newPerson->_firstName = [self.firstName copy];
    newPerson->_lastName = [self.lastName copy];
    newPerson->_age = self.age;
    return newPerson;
}

@end
