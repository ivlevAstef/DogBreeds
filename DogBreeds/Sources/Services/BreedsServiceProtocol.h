//
//  BreedsServiceProtocol.h
//  DogBreeds
//
//  Created by Alexander Ivlev on 07/03/2017.
//  Copyright © 2017 SIA. All rights reserved.
//

#import "Breed.h"

@protocol BreedsServiceProtocol <NSObject>

- (NSArray<Breed*>*)listOfBreeds;

@end
