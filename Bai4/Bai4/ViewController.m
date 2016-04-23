//
//  ViewController.m
//  Bai4
//
//  Created by admin on 4/23/16.
//  Copyright © 2016 Techkids. All rights reserved.
//

#import "ViewController.h"
@import MediaPlayer;

#import <AVFoundation/AVFoundation.h>
@interface ViewController ()
@property AVPlayer* avPlayer;

///@property (nonatomic,strong)AVAudioPlayer *audioPlayer;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    NSURL *url = [NSURL fileURLWithPath:[[NSBundle mainBundle]
                                         pathForResource:@"The Lonely Island ft. Akon - I Just Had Sex"
                                         ofType:@"mp3"]];
    
    
    
    _avPlayer = [[AVPlayer alloc] initWithURL:url];
    
  
    //[_audioPlayer play];
    
    MPRemoteCommandCenter *command = [MPRemoteCommandCenter sharedCommandCenter];
    [command.playCommand addTarget:self action:@selector(play)];
    [command.seekForwardCommand addTarget:self action:@selector(seekForwardSong)];
    [command.nextTrackCommand addTarget:self action:@selector(nextTrack)];
}

- (void) play{
    //[_audioPlayer play];
    [_avPlayer play];
    [self dispplayInfo];
}
- (void) nextTrack
{
NSLog(@"121");
}

- (void) seekForwardSong
{
    NSLog(@"xxx");
    //_audioPlayer.rate = 2.0f;
    _avPlayer.rate = 2.0f;
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)btnClickPlay:(id)sender {
}
- (void) dispplayInfo
{
    MPNowPlayingInfoCenter* info = [MPNowPlayingInfoCenter defaultCenter];
    NSMutableDictionary* newInfo = [[NSMutableDictionary alloc] init];
//    NSSet* itemProperties = [NSSet setWithObjects:MPMediaItemPropertyTitle,
//                             MPMediaItemPropertyArtist,
//                             MPMediaItemPropertyPlaybackDuration,
//                             MPNowPlayingInfoPropertyElapsedPlaybackTime,
//                             nil];
    
    AVPlayerItem *item = _avPlayer.currentItem;
    NSArray* data = [item.asset commonMetadata];
    for (AVMetadataItem* i in data) {
        //NSLog(@"%@", i.commonKey );
        NSString *key = i.commonKey;
        NSString *value = i.value;
        if([key isEqualToString:@"title"]){
            [newInfo setObject:(value) forKey:MPMediaItemPropertyTitle];
            
        } else if([key isEqualToString:@"artist"]) {
            [newInfo setObject:(value) forKey:MPMediaItemPropertyArtist];
        } else if([key isEqualToString:@"albumName"])
        {
                [newInfo setObject:(value) forKey:MPMediaItemPropertyAlbumTitle];
        }
    }
    
        info.nowPlayingInfo = newInfo;

}
@end
