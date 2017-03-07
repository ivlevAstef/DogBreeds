//
//  Breed.m
//  DogBreeds
//
//  Created by Alexander Ivlev on 05/03/2017.
//  Copyright © 2017 SIA. All rights reserved.
//

#import "Breed.h"

@implementation Breed

+ (Breed*)newWithName:(NSString*)name
                 year:(NSUInteger)year
              country:(NSString*)country
             coatType:(DogCoatType)coatType
                image:(UIImage*)image {
  Breed* breed = [Breed new];
  [breed setName:name];
  [breed setYear:year];
  [breed setCountry:country];
  [breed setCoatType:coatType];
  [breed setImage:image];
  
  return breed;
}

@end
