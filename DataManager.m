//
//  DataManager.m
//  Timer
//
//  Created by Adam Schor on 5/18/18.
//  Copyright © 2018 AandA Development. All rights reserved.
//

#import "DataManager.h"

@implementation DataManager

+(BOOL)saveData: (NSMutableArray *)array forKey: (NSString *) key {
 
    [[NSUserDefaults standardUserDefaults] setObject:array forKey:key];
    [[NSUserDefaults standardUserDefaults] synchronize];
    return true;
}

+(id)getDataForKey: (NSString *) key {
    return [[NSUserDefaults standardUserDefaults] objectForKey:key];
}

+(NSMutableArray *)getArrayForKey: (NSString *) key {
    
    return [[[NSUserDefaults standardUserDefaults] arrayForKey:key] mutableCopy];
    
}

@end
