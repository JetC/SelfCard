//
//  Deck.m
//  SelfCard
//
//  Created by john fg on 13-5-11.
//  Copyright (c) 2013年 john fg. All rights reserved.
//

#import "Deck.h"
#import "Card.h"

@implementation Deck



-(id)init
{
    self=[super init];
    
    self.cards = [[NSMutableArray alloc]init];
    
    for (NSString *suit in [Card suits])
    {
        for (NSNumber *rank in [Card ranks])
        {
            [self.cards addObject:[[Card alloc]initWithRankAndSuit:rank andSuit:suit]];
        }
    }
    return self;
}


-(Card *)withdrawRandomCard
{
    Card *randomCard;
    if ([self.cards count])
    {
        NSInteger temp = arc4random() % [self.cards count];
        randomCard=self.cards[temp];
        [self.cards removeObjectAtIndex:temp];
        self.count++;
    }
    return randomCard;
}

- (void)match:(NSArray *)cards
{
    if ([cards count] == 2) {
        Card *card1 = (Card *)cards[0];
        Card *card2 = (Card *)cards[1];
        if (card1.rank == card2.rank)
        {
            self.score+= [card1.rank integerValue];
            card1.playable = NO;
            card2.playable = NO;
        }
        else if (card1.suit == card2.suit)
        {
            self.score+= 6;
            card1.playable = NO;
            card2.playable = NO;
        }
        else
        {
            self.score-= 3;
            card1.selected = NO;
            card2.selected = NO;
        }
    }
}

@end
