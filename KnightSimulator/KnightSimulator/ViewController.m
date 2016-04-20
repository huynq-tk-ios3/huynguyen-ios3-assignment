//
//  ViewController.m
//  KnightSimulator
//
//  Created by admin on 4/15/16.
//  Copyright © 2016 Techkids. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

- (CGRect) calculateChessRect: (int)x : (int)y;

@property int chessPadding;

@end

@implementation ViewController

- (void)viewDidLoad {
    
    [super viewDidLoad];
    _chessPadding = 2;
    
    // Do any additional setup after loading the view, typically from a nib.
    self.vChessParent.center = self.view.center;
    
    self.knight = [[Knight alloc] initWithLocation:2 :3];
    

    _ivKnight.frame = [self calculateChessRect:_knight.x :_knight.y];
}

- (CGRect) calculateChessRect: (int)row : (int)col {
    int chessSize = self.vChessParent.frame.size.width / 8;
    return CGRectMake(col * chessSize + _chessPadding,
                      row * chessSize + _chessPadding,
                      chessSize - _chessPadding * 2,
                      chessSize - _chessPadding * 2);
}

- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath {
//    NSLog(@"%ld", indexPath.row);
    
    int x = (int)(indexPath.row / 8);
    int y = (int)(indexPath.row % 8);
    
//    NSLog(@"x,y : %d, %d", x, y);
    
    if([_knight isValidMove:x :y]) {
        NSLog(@"Knight moved");
        [UIView animateWithDuration:0.5f animations:^{
            [_knight setLocation:x :y];
            _ivKnight.frame = [self calculateChessRect:x :y];
        }];
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath{
    return CGSizeMake(collectionView.frame.size.width/8, collectionView.frame.size.height/8);
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    UICollectionViewCell *cell = nil;
    if((indexPath.row / 8) % 2 == 0) {
        if(indexPath.row % 2 == 0) {
            cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"BlackCell" forIndexPath:indexPath];
        }
        else {
            cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"WhiteCell" forIndexPath:indexPath];
        }
    } else {
        if(indexPath.row % 2 != 0) {
            cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"BlackCell" forIndexPath:indexPath];
        }
        else {
            cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"WhiteCell" forIndexPath:indexPath];
        }
    }
    return cell;
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
    return 8*8;
}

@end
