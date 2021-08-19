// Copyright (C) 2021 About Objects, Inc. All Rights Reserved.
// See LICENSE.txt for this project's licensing information.

#import <XCTest/XCTest.h>

void SayHello(void) {
    printf("Hello!\n");
}

void DoNTimesWithBlock(int count, void(^block)(void)) {
    for (int i = 0; i < count; i++) {
        block();
    }
}

@interface BlockLiteralTests : XCTestCase
@end

@implementation BlockLiteralTests

- (void)testFunctionPointers {
    void (*myPtr)(void);
    
    myPtr = SayHello;
    
    myPtr();
}

- (void)testDoNTimesWithBlock {
    DoNTimesWithBlock(3, ^{ printf("Woohoo!\n"); });
}

- (void)testBlockLiteralDefinition {
    void (^myBlock)(void);
    
    myBlock = ^{
        printf("Hello!\n");
    };
    
    myBlock();
    
    id copyOfMyBlock = [myBlock copy];
    NSLog(@"%@", copyOfMyBlock);
}

- (void)testMallocBlock {
    const char *weather = "cloudy";
    
    void (^myBlock)(void) = ^{
        printf("The weather is %s\n", weather);
    };
    
    myBlock();
    
    NSLog(@"%@", myBlock);
}

@end
