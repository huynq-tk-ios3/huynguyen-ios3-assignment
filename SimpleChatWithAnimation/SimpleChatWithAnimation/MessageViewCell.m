//
//  MessageViewCell.m
//  SimpleChatWithAnimation
//
//  Created by admin on 4/17/16.
//  Copyright © 2016 Techkids. All rights reserved.
//

#import "MessageViewCell.h"

@interface MessageViewCell()

@property Message* message;

@end

@implementation MessageViewCell

- (void)awakeFromNib {
    // Initialization code
    
    self.lblLeft.layer.cornerRadius = 5.0f;
    self.lblRight.layer.cornerRadius = 5.0f;
    
    self.lblLeft.clipsToBounds = YES;
    self.lblRight.clipsToBounds = YES;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

- (void)update:(Message *)message {
    self.message = message;
    
    
    if(![message isMine]) {
        self.lblLeft.text = message.text;
        self.lblRight.text = @"";
        self.lblLeft.hidden = NO;
        self.lblRight.hidden = YES;
        
        [self.lblLeft sizeToFit];
        UILabel *lbl = self.lblLeft;
        lbl.frame = CGRectMake(
                               0,
                               lbl.frame.origin.y,
                               self.frame.size.width - 30.0f,
                               lbl.frame.size.height + 10);
    }
    else {
        self.lblLeft.text = @"";
        self.lblRight.text = message.text;
        self.lblLeft.hidden = YES;
        self.lblRight.hidden = NO;
        [self.lblRight sizeToFit];
        
                UILabel *lbl = self.lblRight;
                lbl.frame = CGRectMake(10.0f,
                                       lbl.frame.origin.y,
                                      self.bounds.size.width - 10,
                                       lbl.frame.size.height + 10);
    }
}

- (CGFloat) labelHeight {
    if([self.message isMine]) {
        return self.lblRight.frame.size.height;
    } else {
        return self.lblLeft.frame.size.height;
    }
}



//- (void)update:(NSString *)message :(BOOL)isLeft{
//
//    if (isLeft) {
//        self.lblLeft.text = message;
//        self.lblLeft.hidden = NO;
//        self.lblRight.hidden = YES;
//        [self.lblLeft sizeToFit];
//    } else {
//        self.lblRight.text = message;
//        self.lblLeft.hidden = YES;
//        self.lblRight.hidden = NO;
//        [self.lblRight sizeToFit];
//        
//        UILabel *lbl = self.lblRight;
//        lbl.frame = CGRectMake(
//                               self.bounds.size.width - lbl.frame.size.width,
//                               lbl.frame.origin.y,
//                               lbl.frame.size.width,
//                               lbl.frame.size.height);
//    }
//    [self.contentView sizeToFit];
//    [self sizeToFit];
//}
//
//- (void)updateAndSizeToFit:(NSString *)message :(BOOL)isLeft{
//    if (isLeft) {
//        self.lblLeft.text = message;
//        self.lblLeft.hidden = NO;
//        self.lblRight.hidden = YES;
//        [self.lblLeft sizeToFit];
//    } else {
//        self.lblRight.text = message;
//        self.lblLeft.hidden = YES;
//        self.lblRight.hidden = NO;
//        [self.lblRight sizeToFit];
//    }
//    
//    [self.contentView sizeToFit];
//    [self sizeToFit];
//}

@end
