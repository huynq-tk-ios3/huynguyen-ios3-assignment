//
//  ViewController.h
//  PlayerAndNotifications
//
//  Created by admin on 4/23/16.
//  Copyright © 2016 Techkids. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AVFoundation/AVPlayer.h>
#import <AVFoundation/AVFoundation.h>


@interface ViewController : UIViewController

@property AVAudioPlayer * player;
@property AVPlayerItem* playerItem;
@property AVPlayerLayer* playerLayer;
@property AVAsset* asset;
@property (weak, nonatomic) IBOutlet UIImageView *imvArtWork;

@end

