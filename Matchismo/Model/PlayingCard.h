//
//  PlayingCard.h
//  Matchismo
//
//  Created by Michael Jordan on 3/11/13.
//  Copyright (c) 2013 Michael Jordan. All rights reserved.
//

#import "Card.h"

@interface PlayingCard : Card

@property (strong, nonatomic) NSString *suit;
@property (nonatomic) NSUInteger rank;

-(NSString *)contents;
+(NSArray *)validSuits;
+(NSArray *)rankStrings;
+(NSUInteger)maxRank;

@end
