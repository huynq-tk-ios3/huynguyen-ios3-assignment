//
//  ViewController.h
//  ChessboardByCollectionView2
//
//  Created by Huy Nguyen on 4/10/16.
//  Copyright © 2016 TechKids. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout>

@property (weak, nonatomic) IBOutlet UICollectionView *collectionView;

@end

