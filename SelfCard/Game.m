//
//  Game.m
//  SelfCard
//
//  Created by john fg on 13-5-13.
//  Copyright (c) 2013年 john fg. All rights reserved.
//

#import "Game.h"
#import "ViewController.h"
#import "Deck.h"

@interface Game ()
@property (nonatomic, strong)NSMutableArray *cards;
@property (nonatomic, strong)ViewController *viewController;
@property (nonatomic, strong)Deck *deck;
@end

@implementation Game


- (NSMutableArray *)cards
{
    if (!_cards) {
        _cards = [NSMutableArray new];
        for (UIButton *cardButton in self.viewController.cardButtons)
        {
            [_cards addObject:[self.deck withdrawRandomCard]];
        }
    }
    return _cards;
}



//- (void)didReceiveMemoryWarning
//{
//    [super didReceiveMemoryWarning];
//    // Dispose of any resources that can be recreated.
//}
//
//- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
//{
//    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
//    [self setup];
//    return self;
//}

//- (void)awakeFromNib
//{
//    [sggfffuper awakeFromNib];
//    [self setup];
//}

//- (void)setup
//{
//    //design init
//}

//- (void)viewDidLoad
//{
//    [super viewDidLoad];
//	// Do any additional setup after loading the view, typically from a nib.
//}
//
//- (void)viewWillAppear:(BOOL)animated
//{
//    [super viewWillAppear:animated];
//}
//
//- (void)viewDidAppear:(BOOL)animated
//{
//    [super viewDidAppear:animated];
//}
//
////do something


@end
