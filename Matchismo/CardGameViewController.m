//
//  CardGameViewController.m
//  Matchismo
//
//  Created by Michael Jordan on 3/11/13.
//  Copyright (c) 2013 Michael Jordan. All rights reserved.
//

#import "CardGameViewController.h"

@interface CardGameViewController ()

@property (weak, nonatomic) IBOutlet UILabel *flipsLabel;
@property (nonatomic) int flipCount;
@property (nonatomic) PlayingCardDeck *playingCardDeck;

@end

@implementation CardGameViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    self.playingCardDeck = [[PlayingCardDeck alloc] init];
}

-(void)setFlipCount:(int)flipCount
{
    _flipCount = flipCount;
    self.flipsLabel.text = [NSString stringWithFormat:@"Flips: %d", self.flipCount];
    
}

- (IBAction)flipCard:(UIButton *)sender
{
    sender.selected = !sender.isSelected;
    
    if(sender.selected){
        PlayingCard *card = (PlayingCard*)[self.playingCardDeck drawRandomCard];
        if(card){
            [sender setTitle:card.contents forState: UIControlStateSelected];
            self.flipCount++;
        }
    }
}

@end
