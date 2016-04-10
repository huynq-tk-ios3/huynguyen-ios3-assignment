//
//  ViewController.m
//  ChessBoardWithColletionView
//
//  Created by Huy Nguyen on 4/9/16.
//  Copyright © 2016 TechKids. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property NSInteger collectionViewWidth;
@property NSInteger collectionViewHeight;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
    return 1;
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return 1;
}

// The cell that is returned must be retrieved from a call to -dequeueReusableCellWithReuseIdentifier:forIndexPath:
- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    
    UICollectionViewCell * cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"BlackCell" forIndexPath:indexPath];
    
     return cell;
 }

- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath {
    
    return CGSizeMake((CGFloat)_collectionViewWidth/8, (CGFloat)_collectionViewWidth/8);
}

- (void)viewDidAppear:(BOOL)animated{
    _collectionViewWidth = _collectionView.collectionViewLayout.collectionViewContentSize.width;
    _collectionViewHeight = _collectionView.collectionViewLayout.collectionViewContentSize.height;
}


@end
