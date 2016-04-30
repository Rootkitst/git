//
//  Contact.h
//  通讯录
//
//  Created by dllo on 16/4/24.
//  Copyright © 2016年 Joe. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Contact : NSObject
@property (nonatomic, retain) NSString *name;
@property (nonatomic, retain) NSString *sex;
@property (nonatomic, retain) NSString *number;
@property (nonatomic, retain) NSString *address;
@property (nonatomic, retain) NSString *group;
@property (nonatomic, retain) NSString *age;

- (instancetype)initWithname: (NSString *)name
                         sex: (NSString *)sex
                      number: (NSString *)number
                     address: (NSString *)address
                       group: (NSString *)group
                         age: (NSString *)age;

+ (instancetype)contactWithName: (NSString *)name
                            sex: (NSString *)sex
                         number: (NSString *)number
                        address: (NSString *)address
                          group: (NSString *)group
                            age: (NSString *)age;

@end
