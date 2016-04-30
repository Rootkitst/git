//
//  Contact.m
//  通讯录
//
//  Created by dllo on 16/4/24.
//  Copyright © 2016年 Joe. All rights reserved.
//

#import "Contact.h"

@implementation Contact

- (instancetype)initWithname:(NSString *)name sex:(NSString *)sex number:(NSString *)number address:(NSString *)address group:(NSString *)group age:(NSString *)age{

    self = [super init];
    if (self) {
        self.name = name;
        self.sex = sex;
        self.number = number;
        self.address = address;
        self.group = group;
        self.age = age;
    }
    return self;
}

+ (instancetype)contactWithName:(NSString *)name sex:(NSString *)sex number:(NSString *)number address:(NSString *)address group:(NSString *)group age:(NSString *)age{

    return [[Contact alloc] initWithname:name sex:sex number:number address:address group:group age:age];
}

@end
