//
//  ViewController.m
//  Slap Justin
//
//  Created by Henrique Valcanaia on 2/24/15.
//  Copyright (c) 2015 Henrique Valcanaia. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
	volumeSlider = [self.view viewWithTag:1];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)tapMeBtnPressed {
    NSString *soundName = @"punch.mp3";
    NSString *soundFilePath = [NSString stringWithFormat:@"%@/%@",
                               [[NSBundle mainBundle] resourcePath], soundName];
    NSURL *soundFileURL = [NSURL fileURLWithPath:soundFilePath];
	
    _player = [[AVAudioPlayer alloc] initWithContentsOfURL:soundFileURL
                                                     error:nil];
    _player.numberOfLoops = 0;
    [self playAudio];
}

- (IBAction)volumeDidChange:(UISlider*) slider{
	volumeSlider = slider;
	float f = [volumeSlider value];
    [_player setVolume:f];
    NSLog(@"%f", f);
}

- (void)playAudio {
    if([_player isPlaying]){
        [self stopAudio];
    }
	[self volumeDidChange:volumeSlider];
    [_player play];
    NSLog(@"play");
}

- (void)stopAudio {
    if (_player != nil) {
        [_player stop];
        NSLog(@"stop");
    }
}

@end
