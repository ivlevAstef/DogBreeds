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
      return @"hairless";
    case DogCoat_Short:
      return @"short";
    case DogCoat_Wire:
      return @"wire";
    case DogCoat_Curly:
      return @"curly";
    case DogCoat_CurlyWire:
      return @"curly-wire";
    case DogCoat_Long:
      return @"long";
  }
  
  NSAssert(false, @"Incorrect dog coat type: %lu", (unsigned long)type);
  return @"unknown";
}

@end
