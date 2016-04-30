//
//  AddressBook.m
//  通讯录
//
//  Created by dllo on 16/4/24.
//  Copyright © 2016年 Joe. All rights reserved.
//

#import "AddressBook.h"

@implementation AddressBook
- (instancetype)initWithNSMutableDictionary:(NSMutableDictionary *)dic{\

    self = [super init];
    if (self) {
        self.dic = dic;
    }
    return self;
}

+ (instancetype)AddressBook:(NSMutableDictionary *)dic{

    return [[AddressBook alloc] initWithNSMutableDictionary:dic];
}

- (void)addContact:(Contact *)con Dic:(NSMutableDictionary *)dic{
    NSString *str = [con.name substringWithRange:NSMakeRange(0, 1)];
    NSMutableArray *arr = [dic objectForKey:str];
    if (arr) {
        
        [arr addObject:con];
        
    }
    else{
    
        NSMutableArray *marr = [NSMutableArray array];
        [marr addObject:con];
        [dic setObject:marr forKey:str];

    }
    
}

- (void)nsl:(NSMutableDictionary *)dic{

    for (NSString *key in dic) {
        NSLog(@"%@: ", key);
        NSMutableArray *arr = [dic objectForKey:key];
        for (Contact *con in arr) {
            NSLog(@"name: %@, sex: %@, number: %@, address: %@, group: %@, age: %@", con.name, con.sex, con.number, con.address, con.group, con.age);
        }
    }
}

@end
