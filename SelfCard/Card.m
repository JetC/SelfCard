//
//  Card.m
//  SelfCard
//
//  Created by john fg on 13-5-11.
//  Copyright (c) 2013年 john fg. All rights reserved.
//

#import "Card.h"

@interface Card ()
//@property (nonatomic,strong) NSArray* aToK;
@property (nonatomic, strong, readwrite) NSNumber *rank;

@end


@implementation Card

@synthesize rank=_rank;



- (void)setRank:(NSNumber *)rank
{
    if ([[Card ranks] containsObject:rank])
        
    {
        _rank = rank;
    }
}

- (void)setSuit:(NSString *)suit
{
    if ([[Card suits] containsObject:suit])
    {
        _suit = suit;
    }
}


+(NSArray*)ranks
{
    return @[@1,@2,@3,@4,@5,@6,@7,@8,@9,@10,@11,@12,@13];
}

+(NSArray *)suits
{
    return @[@"♥",@"♦",@"♠",@"♣"];
}

-(id)initWithRankAndSuit:(NSNumber *)rank andSuit:(NSString *)suit
{
    Card *card=[[Card alloc]init];
    card.suit=suit;
    card.rank=rank;
    card.playable=YES;
    return card;
}

-(NSString *)contain;
{
    NSString *rank=@[@"A",@"2",@"3",@"4",@"5",@"6",@"7",@"8",@"9",@"10",@"J",@"Q",@"K"][[[Card ranks]indexOfObject:self.rank]];
    
    
    return [NSString stringWithFormat:@"%@%@",rank,self.suit];
}

@end
