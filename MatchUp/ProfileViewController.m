//
//  ProfileViewController.m
//  MatchUp
//
//  Created by Vincent Chau on 8/12/15.
//  Copyright (c) 2015 Vincent Chau. All rights reserved.
//

#import "ProfileViewController.h"

@interface ProfileViewController ()
@property (strong, nonatomic) IBOutlet UIImageView *profilePictureImageView;
@property (strong, nonatomic) IBOutlet UILabel *locationLabel;
@property (strong, nonatomic) IBOutlet UILabel *ageLabel;
@property (strong, nonatomic) IBOutlet UILabel *statusLabel;
@property (strong, nonatomic) IBOutlet UILabel *tagLineLabel;

@end

@implementation ProfileViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    PFFile *pictureFile = self.photo[kPhotoPictureKey];
    [pictureFile getDataInBackgroundWithBlock:^(NSData *data, NSError *error)
    {
        self.profilePictureImageView.image = [UIImage imageWithData:data];
        
    }];
    PFUser *user = self.photo[kPhotoUserKey];
    self.locationLabel.text = user[kUserProfileKey][kUserProfileLocationKey];
    self.ageLabel.text = [NSString stringWithFormat:@"%@", user[kUserProfileKey][kUserProfileAgeKey]];
    self.statusLabel.text = user[kUserProfileKey][kUserProfileRelationshipStatusKey];
    self.tagLineLabel.text=user[kUserProfileRelationshipStatusKey][kUserTagLineKey];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
