//
//  randomDiziOlustur.m
//  arrayDoldurucu
//
//  Created by Erk EKİN on 12/18/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import "randomDiziOlustur.h"

@implementation randomDiziOlustur

-(int)getRandomNumber:(int)from to:(int)to {
    
    return (int)from + arc4random() % (to-from+1);
}
-(NSArray *)randomDiziOlustur:(int)from:(int)to
{
    if (from>=to) {
        
        
         return [[NSMutableArray alloc] init];
    }
    array = [[NSMutableArray alloc] init];
    
    do {
        [self doldur:from :to];
    } while ([array count] < (to-from+1));
    
    NSMutableArray * resultArray = [[NSMutableArray alloc] initWithArray:array];
    return resultArray;
}
-(BOOL)sayiArraydeVarMi:(int)sayi

{
    BOOL nolduLan=NO;
    
    for (NSString * arraydekiSayi in array) {
        
        if (sayi == [arraydekiSayi intValue]) {
            
            nolduLan = YES;
            return nolduLan;
            
        }
    }
    
    return nolduLan;
}
-(void)doldur:(int)from:(int)to

{
    
    int randomNumber ;
    
    
    randomNumber = [self getRandomNumber:from to:to];
    
    
    
    if (![self sayiArraydeVarMi:randomNumber])
        [array addObject:[NSString stringWithFormat:@"%i",randomNumber]];
    
    
}

@end
