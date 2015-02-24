//
//  ViewController.h
//  Slap Justin
//
//  Created by Henrique Valcanaia on 2/24/15.
//  Copyright (c) 2015 Henrique Valcanaia. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AudioToolbox/AudioToolbox.h>
#import <AVFoundation/AVFoundation.h>

@interface ViewController : UIViewController{
    IBOutlet UIButton *tapMe;
    IBOutlet UISlider *volumeSlider;
}

@property (strong, nonatomic) AVAudioPlayer *player;

- (void)playAudio;
- (void)stopAudio;

@end

