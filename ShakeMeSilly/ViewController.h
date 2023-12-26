//
//  ViewController.h
//  ShakeMeSilly
//
//  Created by MacBook AIR on 26/12/2023.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController {
    NSTimer *timer;
    int time;
    int score;
    int modInt;
    int imageInt;
    
    
    
}

@property (weak, nonatomic) IBOutlet UILabel *timeLabel;

@property (weak, nonatomic) IBOutlet UILabel *scoreLabel;
@property (weak, nonatomic) IBOutlet UIButton *button;
@property (weak, nonatomic) IBOutlet UIImageView *imageView;


- (IBAction)didTapButton:(id)sender;

@end

