//
//  BreedsTableViewController.m
//  DogBreeds
//
//  Created by Alexander Ivlev on 05/03/2017.
//  Copyright © 2017 SIA. All rights reserved.
//

#import "BreedsTableViewController.h"
#import "BreedViewCell.h"
#import "BreedViewController.h"

#import "BreedsService.h"

@interface BreedsTableViewController ()

@property (nonatomic, strong) id<BreedsServiceProtocol> service;
@property (nonatomic, strong) NSArray<Breed*>* breeds;

@end

@implementation BreedsTableViewController

- (instancetype)initWithCoder:(NSCoder *)aDecoder {
  if (self = [super initWithCoder: aDecoder]) {
    self.service = [BreedsService new];
  }
  return self;
}

- (void)viewDidLoad {
  [super viewDidLoad];
  
  self.breeds = [self.service listOfBreeds];
  [self.tableView reloadData];
  
  self.view.backgroundColor = [UIColor colorWithPatternImage: [UIImage imageNamed:@"background"]];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
  return self.breeds.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
  BreedViewCell* cell = [self.tableView dequeueReusableCellWithIdentifier:@"BreedViewCell"];
  
  [cell setup:self.breeds[indexPath.row]];
  
  return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
  BreedViewController* breedVC = [self.storyboard instantiateViewControllerWithIdentifier:@"Breed"];
  breedVC.breed = self.breeds[indexPath.row];
  
  [[self navigationController] pushViewController:breedVC animated:TRUE];
}

@end
