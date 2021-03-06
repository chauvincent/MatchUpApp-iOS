//
//  ProfileViewController.h
//  MatchUp
//
//  Created by Vincent Chau on 8/12/15.
//  Copyright (c) 2015 Vincent Chau. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol ProfileViewcontrollerDelegate <NSObject>

-(void)didPressLike;
-(void)didPressDislike;

@end


@interface ProfileViewController : UIViewController

@property (strong, nonatomic) PFObject *photo;
@property (weak, nonatomic) id <ProfileViewcontrollerDelegate> delegate;



@end
