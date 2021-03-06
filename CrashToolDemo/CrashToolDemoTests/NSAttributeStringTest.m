//
//  NSAttributeStringTest.m
//  CrashToolDemo
//
//  Created by Andrew on 2017/5/7.
//  Copyright © 2017年 Andrew. All rights reserved.
//

#import <XCTest/XCTest.h>

@interface NSAttributeStringTest : XCTestCase

@end

@implementation NSAttributeStringTest

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testExample {
    // This is an example of a functional test case.
    // Use XCTAssert and related functions to verify your tests produce the correct results.
}

- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}

- (void)testInitWithString {
    
    NSString *nilStr = nil;
    NSAttributedString *attribute = [[NSAttributedString alloc] initWithString:nilStr];//NSConcreteAttributedString initWithString:
    NSLog(@"attribue: %@",attribute);
}

- (void)testInitWithAttributeString {
    
    //NSAttributedString *attStr = [[NSAttributedString alloc] initWithString:@"AndrewiOS"];
    
    NSAttributedString *attStr = nil;
    NSAttributedString *anotherAttrStr = [[NSAttributedString alloc] initWithAttributedString:attStr]; //'NSConcreteAttributedString initWithString:
    NSLog(@"anotherAttStr: %@",anotherAttrStr);
    
}

- (void)testInitWithStringAttribute {
    
    NSString *str = nil;
    NSDictionary *att = @{NSFontAttributeName :[UIFont systemFontOfSize:14]};
    NSAttributedString *anotherAttrStr = [[NSAttributedString alloc] initWithString:str attributes:att ]; //'NSConcreteAttributedString initWithString:
    NSLog(@"anotherAttStr: %@",anotherAttrStr);
}


@end
