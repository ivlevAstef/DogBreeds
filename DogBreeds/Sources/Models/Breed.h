//
//  Breed.h
//  DogBreeds
//
//  Created by Alexander Ivlev on 05/03/2017.
//  Copyright © 2017 SIA. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "DogCoatType.h"

@interface Breed : NSObject

@property (nonatomic, copy) NSString* name;
@property (nonatomic, assign) NSUInteger year;
@property (nonatomic, copy) NSString* country;

@property (nonatomic, assign) DogCoatType coatType;

@property (nonatomic, strong) UIImage* image;

+ (Breed*)newWithName:(NSString*)name
                 year:(NSUInteger)year
              country:(NSString*)country
             coatType:(DogCoatType)coatType
                image:(UIImage*)image;

@end
