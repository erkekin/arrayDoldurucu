//
//  randomDiziOlustur.h
//  arrayDoldurucu
//
//  Created by Erk EKİN on 12/18/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface randomDiziOlustur : NSObject
{

    NSMutableArray * array ;

}

-(void)doldur:(int)from:(int)to;
-(BOOL)sayiArraydeVarMi:(int)sayi;
-(NSArray *)randomDiziOlustur:(int)from:(int)to;
-(int)getRandomNumber:(int)from to:(int)to ;


@end
