//
//  Deck.h
//  Matchismo
//
//  Created by Michael Jordan on 3/11/13.
//  Copyright (c) 2013 Michael Jordan. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Card.h"

@interface Deck : NSObject

-(void)addCard:(Card *)card atTop:(BOOL)atTop;

-(Card *)drawRandomCard;

@end
