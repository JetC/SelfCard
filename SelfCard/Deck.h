//
//  Deck.h
//  SelfCard
//
//  Created by john fg on 13-5-11.
//  Copyright (c) 2013年 john fg. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Card.h"

@interface Deck : NSObject
@property (nonatomic,strong)NSMutableArray *cards;
@property (nonatomic)NSInteger count;
@property (nonatomic,strong)NSMutableArray *cardsTemp;
@property (nonatomic)NSInteger score;



- (Card *)withdrawRandomCard;

- (void)match:(NSArray *)cards;



@end
