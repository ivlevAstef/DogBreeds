//
//  BreedsService.m
//  DogBreeds
//
//  Created by Alexander Ivlev on 07/03/2017.
//  Copyright © 2017 SIA. All rights reserved.
//

#import "BreedsService.h"

@implementation BreedsService

- (NSArray<Breed*>*)listOfBreeds {
  return @[
           [Breed newWithName:@"Лабрадор" year:1887 country:@"Канада"
                     coatType: DogCoat_Short image: nil],
           [Breed newWithName:@"Стаффордширский бультерьер" year:1935 country:@"Великобритания"
                     coatType: DogCoat_Short image: nil],
           [Breed newWithName:@"Шотландский терьер" year:1883 country:@"Шотландия"
                     coatType: DogCoat_Long image: nil],
           [Breed newWithName:@"Чау-чау" year:1957 country:@"КНР"
                     coatType: DogCoat_Long image: nil],
           [Breed newWithName:@"Американский кокер-спаниель" year:1880 country:@"США"
                     coatType: DogCoat_Curly image: nil],
           [Breed newWithName:@"Бигль" year:1870 country:@"США"
                     coatType: DogCoat_Short image: nil],
           [Breed newWithName:@"Бульдог" year:1896 country:@"Франция"
                     coatType: DogCoat_Short image: nil],
           ];
}

@end
