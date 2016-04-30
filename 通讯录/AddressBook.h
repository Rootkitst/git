//
//  AddressBook.h
//  通讯录
//
//  Created by dllo on 16/4/24.
//  Copyright © 2016年 Joe. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Contact.h"
@interface AddressBook : NSObject
@property (nonatomic, retain) NSMutableDictionary *dic;

- (instancetype)initWithNSMutableDictionary: (NSMutableDictionary *)dic;

+ (instancetype)AddressBook: (NSMutableDictionary *)dic;

- (void)nsl:(NSMutableDictionary *)dic;

- (void)addContact:(Contact *)con
               Dic:(NSMutableDictionary *)dic;

@end
