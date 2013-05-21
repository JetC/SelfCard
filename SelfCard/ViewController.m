//
//  ViewController.m
//  SelfCard
//
//  Created by john fg on 13-5-11.
//  Copyright (c) 2013年 john fg. All rights reserved.
//

#import "ViewController.h"
#import "Deck.h"

@interface ViewController ()
@property (nonatomic, strong)Deck *deck;

@property (weak, nonatomic) IBOutlet UILabel *count;
@property (weak, nonatomic) IBOutlet UILabel *countOfAll;
@property (weak, nonatomic) IBOutlet UILabel *scoreLable;
@property (nonatomic)int countA;


@end

@implementation ViewController

- (void)sync
{
    for (UIButton *cardButton in self.cardButtons) {
        Card *card = self.cards[[self.cardButtons indexOfObject:cardButton]];
        [cardButton setTitle:[card contain] forState:UIControlStateSelected];
        [cardButton setTitle:[card contain] forState:UIControlStateSelected|UIControlStateDisabled];
        cardButton.selected = card.selected;
        if (!card.playable) {
            cardButton.alpha = 0.6;
        }
        cardButton.enabled = card.playable;
    }
    self.count.text = [NSString stringWithFormat:@"%i",self.deck.count];
    self.countOfAll.text=[NSString stringWithFormat:@"%i",self.countA];
    self.scoreLable.text = [NSString stringWithFormat:@"%i",self.deck.score];
}

- (IBAction)touchUpInside:(UIButton *)sender
{
    sender.selected = !sender.isSelected;
    Card *card = self.cards[[self.cardButtons indexOfObject:sender]];
    card.selected = sender.selected;
    if (sender.isSelected)
    {
        self.countA++;
        NSMutableArray *tempArray = [[NSMutableArray alloc] init];
        for (UIButton *cardButton in self.cardButtons)
        {
            if (cardButton.isSelected == YES) {
                [tempArray addObject:self.cards[[self.cardButtons indexOfObject:cardButton]]];
            }
        }
        if ([tempArray count] == 2) {
            [self.deck match:tempArray];
        }
    }
    [self sync];
}


-(Deck *)deck
{
    if (!_deck)
    {
        _deck=[[Deck alloc]init];
    }
    return _deck;
}




@end
