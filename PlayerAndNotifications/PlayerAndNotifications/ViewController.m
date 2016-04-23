//
//  ViewController.m
//  PlayerAndNotifications
//
//  Created by admin on 4/23/16.
//  Copyright © 2016 Techkids. All rights reserved.
//

#import "ViewController.h"
#import <MediaPlayer/MPMediaItem.h>
#import <MediaPlayer/MPNowPlayingInfoCenter.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSString* path = [[NSBundle mainBundle] pathForResource:@"Alan Walker - Faded" ofType:@"mp3"];
    
    NSString* imagePath = [[NSBundle mainBundle] pathForResource:@"faded" ofType:@"jpg"];
    
    NSLog(path);
    
    NSURL* url = [NSURL fileURLWithPath:path];
    
    _player = [[AVAudioPlayer alloc] initWithContentsOfURL:url error:nil];
    
    _player.enableRate = YES;
    
    [_player play];
    
    _asset = [AVAsset assetWithURL:url];
    
    
    NSMutableDictionary *songInfo = [[NSMutableDictionary alloc] init];
    
    MPMediaItemArtwork *albumArt = [[MPMediaItemArtwork alloc] initWithImage: [UIImage imageNamed:@"600x600bb.jpg"]];
    
    [self.imvArtWork setImage:[UIImage imageNamed:@"600x600bb.jpg"]];
    
    [songInfo setObject:@"Faded" forKey:MPMediaItemPropertyTitle];
    [songInfo setObject:@"Alan Walker" forKey:MPMediaItemPropertyArtist];
    [songInfo setObject:@"Album" forKey:MPMediaItemPropertyAlbumTitle];
    [songInfo setObject:albumArt forKey:MPMediaItemPropertyArtwork];
    
    [[MPNowPlayingInfoCenter defaultCenter] setNowPlayingInfo:songInfo];

    
    [[UIApplication sharedApplication] beginReceivingRemoteControlEvents];
    [self becomeFirstResponder];
    
}

- (BOOL)canBecomeFirstResponder{
    return YES;
}

- (void)remoteControlReceivedWithEvent:(UIEvent *)event {
    
    if(event.type == UIEventTyperemoteControl) {
        NSLog(@"Remote control: %d", (int)event.subtype);
        if(event.subtype == UIEventSubtypeRemoteControlBeginSeekingForward) {
            _player.rate = 2.0;
        }
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
