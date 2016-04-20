//
//  ViewController.h
//  KnightSimulator
//
//  Created by admin on 4/15/16.
//  Copyright © 2016 Techkids. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Models/Knight.h"

@interface ViewController : UIViewController <UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout>

@property (weak, nonatomic) IBOutlet UICollectionView *vcChessBoard;
@property (weak, nonatomic) IBOutlet UIView *vChessParent;
@property (weak, nonatomic) IBOutlet UIImageView *ivKnight;
@property (strong, atomic) Knight* knight;

@end

