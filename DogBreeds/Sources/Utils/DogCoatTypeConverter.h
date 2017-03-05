//
//  DogCoatTypeConverter.h
//  DogBreeds
//
//  Created by Alexander Ivlev on 05/03/2017.
//  Copyright © 2017 SIA. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DogCoatType.h"

@interface DogCoatTypeConverter : NSObject

+ (NSString*)toString:(DogCoatType)type;

@end
