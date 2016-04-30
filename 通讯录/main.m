//
//  main.m
//  通讯录
//
//  Created by dllo on 16/4/24.
//  Copyright © 2016年 Joe. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Contact.h"
#import "AddressBook.h"
int main(int argc, const char * argv[]) {
  
    Contact *con = [Contact contactWithName:@"laowang" sex:@"famale" number:@"18012368764" address:@"dl" group:@"fdsf" age:@"12"];
    Contact *con1 = [Contact contactWithName:@"zhangsan" sex:@"famale" number:@"18012368764" address:@"dl" group:@"fdsf" age:@"12"];
    Contact *con2 = [Contact contactWithName:@"dawang" sex:@"famale" number:@"18012368764" address:@"dl" group:@"fdsf" age:@"12"];
    Contact *con3 = [Contact contactWithName:@"aun" sex:@"famale" number:@"18012368764" address:@"dl" group:@"fdsf" age:@"12"];
    Contact *con4 = [Contact contactWithName:@"yun" sex:@"famale" number:@"18012368764" address:@"dl" group:@"fdsf" age:@"12"];
    Contact *con5 = [Contact contactWithName:@"bun" sex:@"famale" number:@"18012368764" address:@"dl" group:@"fdsf" age:@"12"];
    Contact *con6 = [Contact contactWithName:@"nun" sex:@"famale" number:@"18012368764" address:@"dl" group:@"fdsf" age:@"12"];

    Contact *con7 = [Contact contactWithName:@"zun" sex:@"famale" number:@"18012368764" address:@"dl" group:@"fdsf" age:@"12"];
    NSMutableArray *marr = [NSMutableArray arrayWithObjects:con, con1, con2, con3, con4, con5, con6, nil];
    NSMutableDictionary *nsm = [NSMutableDictionary dictionary];
    
    
    
    for (Contact *per in marr) {
        NSString *str = [per.name substringWithRange:NSMakeRange(0, 1)];
        NSMutableArray *arr = [NSMutableArray array];
        [nsm setObject:arr forKey:str];
    }
    
    for (Contact *per in marr) {
        NSString *str = [per.name substringWithRange:NSMakeRange(0, 1)];
        NSMutableArray *arr = [nsm objectForKey:str];
        [arr addObject:per];
    }
    
    AddressBook *addressbook = [AddressBook AddressBook:nsm];
    
//    NSLog(@"%@", addressbook.dic);
    
    [addressbook addContact:con7 Dic:nsm];
    
/*
    NSString *str = [con7.name substringWithRange:NSMakeRange(0, 1)];
    
    NSMutableArray *arr = [addressbook.dic objectForKey:str];
    
    if (arr) {
        
        [arr addObject:con7];
        
    }
    else{
        NSMutableArray *marr = [NSMutableArray array];
        [marr addObject:con7];
        [addressbook.dic setObject:marr forKey:str];
    }
*/
    [addressbook nsl:nsm];
    
    return 0;
}
