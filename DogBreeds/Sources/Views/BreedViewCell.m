//
//  BreedViewCell.m
//  DogBreeds
//
//  Created by Alexander Ivlev on 05/03/2017.
//  Copyright © 2017 SIA. All rights reserved.
//

#import "BreedViewCell.h"
#import "DogCoatTypeConverter.h"

@interface BreedViewCell ()

@property (strong, nonatomic) IBOutlet UILabel *breedLbl;

@property (strong, nonatomic) IBOutlet UILabel *yearLbl;

@property (strong, nonatomic) IBOutlet UILabel *countryLbl;

@property (strong, nonatomic) IBOutlet UILabel *coatTypeLbl;

@end

@implementation BreedViewCell

- (void)setup:(Breed*)breed {
  [self.breedLbl setText: breed.name];
  
  NSString* year = [NSString stringWithFormat:@"%lu", (unsigned long)breed.year];
  [self.yearLbl setText: year];
  
  [self.countryLbl setText: breed.country];
  
  NSString* coatType = [DogCoatTypeConverter toString: breed.coatType];
  [self.coatTypeLbl setText: [@"Шерстный покров: " stringByAppendingString: coatType]];
}

@end
