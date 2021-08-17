// Copyright (C) 2021 About Objects, Inc. All Rights Reserved.
// See LICENSE.txt for this project's licensing information.

#import <XCTest/XCTest.h>
#import <Peeps/Peeps.h>

@interface PersonTests : XCTestCase
@end

@interface PersonTests (Barking)
- (void)bark;
- (void)meow;
@end


@implementation PersonTests

- (void)testCreatePerson {
    Person *person = [[Person alloc] init];
    
    person.firstName = @"Fred";
    person.lastName = @"Smith";
    
//    [person setFirstName:@"Fred"];
//    [person setLastName:@"Smith"];
    NSLog(@"%@", person);
}

- (void)testDescription {
    Person *person = [[Person alloc] init];
    [person setFirstName:@"Fred"];
    [person setLastName:@"Smith"];
    [person setAge:33];
    NSLog(@"%@", person);
}

- (void)testInitializeFirstAndLastNames {
    Person *person = [[Person alloc] initWithFirstName:@"Fred"
                                              lastName:@"Smith"];
    NSLog(@"%@", person);
}

- (void)testDesignatedInitializer {
    Person *person = [[Person alloc] initWithFirstName:@"Fred"
                                              lastName:@"Smith"
                                                   age:33];
    NSLog(@"%@", person);
}

- (void)testFactoryMethod {
    Person *person = [Person personWithFirstName:@"Fred"
                                        lastName:@"Smith"
                                             age:33];
    NSLog(@"%@", person);
}

- (void)testNonPublicMethodDirectInvocation {
    id dog = [[Dog alloc] init];
    [dog bark];
}

- (void)testNonPublicMethod {
    Dog *dog = [[Dog alloc] init];
    SEL mySelector = NSSelectorFromString(@"bark");
    [dog performSelector:mySelector];
//    [dog bark];
}

- (void)testMessageForwarding {
//    NSLog(@"%s", __func__);
    
    id person = [Person personWithFirstName:@"Fred" lastName:@"Smith" age:33];
    Dog *rover = [[Dog alloc] init];
    [person setDog:rover];
    
    if ([person respondsToSelector:@selector(xyz_bark)]) {
        [person xyz_bark];
    } else {
        NSLog(@"No bark method found");
    }
    
    if ([person respondsToSelector:@selector(meow)]) {
        [person meow];
    } else {
        NSLog(@"No meow method found");
    }
}

- (void)testCopying {
    Person *person = [Person personWithFirstName:@"Fred"
                                        lastName:@"Smith"
                                             age:33];
    Person *newPerson = [person copy];
    
    NSLog(@"%@", newPerson);
}

- (void)testStringCategory {
    NSString *s = @"Hello World!";
    [s xyz_bark];
}

@end
