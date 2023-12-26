//
//  ViewController.m
//  ShakeMeSilly
//
//  Created by MacBook AIR on 26/12/2023.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    time = 10;
    score = 0;
    modInt= 0;
    imageInt = 1;
    self.timeLabel.text = [NSString stringWithFormat:@"%i",time];
    self.scoreLabel.text =  [NSString stringWithFormat:@"%i",score];
    
}


- (IBAction)didTapButton:(id)sender {
    if (time == 10){
        timer = [NSTimer scheduledTimerWithTimeInterval:1.0 target:self selector:@selector(updateCounter) userInfo:nil repeats:YES];
        modInt = 1;
        self.button.hidden = YES;
    }
    if ([self.button.currentTitle isEqualToString:@"Restart"]) {
        timer = [NSTimer scheduledTimerWithTimeInterval:1.0 target:self selector:@selector(updateCounter) userInfo:nil repeats:YES];
        time = 10;
        score = 0;
        modInt = 1;
        imageInt = 1;
        self.timeLabel.text = [NSString stringWithFormat:@"%i",time];
        self.scoreLabel.text =  [NSString stringWithFormat:@"%i",score];
        self.button.hidden = YES;
    }

}
-(void)updateCounter{
    time -= 1;
    self.timeLabel.text = [NSString stringWithFormat:@"%i",time];
    if (time == 0){
        [timer invalidate];
        modInt  = 0;
        self.button.hidden = NO;
        [self.button setTitle:@"Restart" forState:UIControlStateNormal];
    }
    
    
}

-(void)motionBegan:(UIEventSubtype)motion withEvent:(UIEvent *)event {
    if (event.subtype == UIEventSubtypeMotionShake) {
        if (modInt ==  1) {
            score += 1;
            self.scoreLabel.text = [NSString stringWithFormat:@"%i",score];
            imageInt += 1;
            if (imageInt <=4){
                self.imageView.image = [UIImage imageNamed:[NSString stringWithFormat:@"Maracas%i.png",imageInt]];
            }else {
                imageInt = 0;
                self.imageView.image = [UIImage imageNamed:[NSString stringWithFormat:@"Maracas%i.png",imageInt]];
            }
            
            
        }
    }
}
@end
