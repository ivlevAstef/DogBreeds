//
//  DogCoatTypeConverter.m
//  DogBreeds
//
//  Created by Alexander Ivlev on 05/03/2017.
//  Copyright © 2017 SIA. All rights reserved.
//

#import "DogCoatTypeConverter.h"

@implementation DogCoatTypeConverter

+ (NSString*)toString:(DogCoatType)type {
  switch (type) {
    case DogCoat_Hairless:
      return @"безшерстная";
    case DogCoat_Short:
      return @"короткошерстная";
    case DogCoat_Curly:
      return @"волнистая";
    case DogCoat_Long:
      return @"длинная";
  }
  
  NSAssert(false, @"Incorrect dog coat type: %lu", (unsigned long)type);
  return @"unknown";
}

@end
