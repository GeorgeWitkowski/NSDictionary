//
//  ViewController.m
//  NSDictionary
//
//  Created by George on 18.04.2018.
//  Copyright © 2018 George Witkowski. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    @autoreleasepool {
    
    //  Create NSDictionary using literal declaration.
    NSDictionary* dictionary = @{
                                 @1 : @"A",
                                 @2 : @"B",
                                 @3 : @"C"
                                 };
    
    //  Make it mutable and add several new entries.
    NSMutableDictionary* mutableDictionary = [dictionary mutableCopy];
    [mutableDictionary setObject:@"F" forKey:@6];
    [mutableDictionary setObject:@"D" forKey:@4];
    [mutableDictionary setObject:@"E" forKey:@5];
    
    //  Sort it in an ascending order.
    NSArray* keys = [mutableDictionary allKeys];
    
    NSArray* ascendingOrderKeys = [keys sortedArrayUsingComparator:^NSComparisonResult(id  _Nonnull obj1, id  _Nonnull obj2) {
        return [obj1 compare:obj2];
    }];
    
    NSLog(@"Acending order:");
    for (NSString* key in ascendingOrderKeys){
        NSLog(@"Key: %@, Value: %@", key, mutableDictionary[key]);
    }
    
    //  Sort it in a descending order.
    NSArray* descendingOrderKeys = [keys sortedArrayUsingComparator:^NSComparisonResult(id  _Nonnull obj1, id  _Nonnull obj2) {
        return [obj2 compare:obj1];
    }];
    NSLog(@"Descending order:");
    for (NSString* key in descendingOrderKeys){
        NSLog(@"Key: %@, Value: %@", key, mutableDictionary[key]);
    }
    
    //  Check whether required value is contained in the dictionary.
    NSString* requiredValue = @"L";
    NSArray* values = [mutableDictionary allValues];
    
    if ([values containsObject: requiredValue]){
        NSLog(@"Dictionary contain required value %@", requiredValue);
    }
    else{
        NSLog(@"Dictionary does NOT contain required value %@", requiredValue);
    }
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
