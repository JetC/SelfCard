//
//  Card.h
//  SelfCard
//
//  Created by john fg on 13-5-11.
//  Copyright (c) 2013年 john fg. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Card : NSObject
@property (nonatomic,strong,readonly) NSNumber* rank;
@property (nonatomic,strong) NSString *suit;
@property (nonatomic) BOOL playable;
@property (nonatomic) BOOL selected;


+(NSArray *) ranks;
+(NSArray *) suits;

-(id)initWithRankAndSuit:(NSNumber *)rank andSuit:(NSString *)suit;//注意是两个冒号

-(NSString *)contain;




@end
