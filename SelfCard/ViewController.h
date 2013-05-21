//
//  ViewController.h
//  SelfCard
//
//  Created by john fg on 13-5-11.
//  Copyright (c) 2013年 john fg. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (strong, nonatomic) IBOutletCollection(UIButton) NSArray *cardButtons;
@property (strong, nonatomic) UIButton *cardButton;
@end
