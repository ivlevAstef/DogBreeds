//
//  BreedViewController.m
//  DogBreeds
//
//  Created by Alexander Ivlev on 05/03/2017.
//  Copyright © 2017 SIA. All rights reserved.
//

#import "BreedViewController.h"

@interface BreedViewController ()

@property (strong, nonatomic) IBOutlet UILabel *breedLbl;
@property (strong, nonatomic) IBOutlet UILabel *countryLbl;
@property (strong, nonatomic) IBOutlet UILabel *yearLbl;
@property (strong, nonatomic) IBOutlet UILabel *coatTypeLbl;

@property (strong, nonatomic) IBOutlet UIImageView *dogImg;
@property (strong, nonatomic) IBOutlet UILabel *descriptionLbl;


@end

@implementation BreedViewController

- (void)viewDidLoad {
  [super viewDidLoad];
  
  self.view.backgroundColor = [UIColor colorWithPatternImage: [UIImage imageNamed:@"background"]];
}


@end
