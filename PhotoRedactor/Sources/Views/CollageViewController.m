//
//  CollageViewController.m
//  PhotoRedactor
//
//  Created by Alexander Ivlev on 14/03/2017.
//  Copyright © 2017 SIA. All rights reserved.
//

#import "CollageViewController.h"
#import "Photos/Photos.h"
#import "CollageCellCollectionViewCell.h"

@interface CollageViewController () <UICollectionViewDelegate,UICollectionViewDataSource>

@property (strong, nonatomic) IBOutlet UICollectionView *collectionView;

@property (strong, nonatomic) PHFetchResult<PHAsset*>* collection;

@end

@implementation CollageViewController

- (void)viewDidLoad {
  [super viewDidLoad];
  
  self.collectionView.delegate = self;
  self.collectionView.dataSource = self;
  
  [self fetch];
}

- (void)viewWillAppear:(BOOL)animated {
  [super viewWillAppear:animated];
}

- (void)fetch {
  self.collection = [PHAsset fetchAssetsWithMediaType:PHAssetMediaTypeImage options:nil];
  
  [self.collectionView reloadData];
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
  return self.collection.count;
}

- (__kindof UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
  return [self.collectionView dequeueReusableCellWithReuseIdentifier:@"cell" forIndexPath:indexPath];
}

- (void)collectionView:(UICollectionView *)collectionView willDisplayCell:(UICollectionViewCell *)cell forItemAtIndexPath:(NSIndexPath *)indexPath {
  CollageCellCollectionViewCell* collageCell = (CollageCellCollectionViewCell*)cell;
  
  PHAsset* asset = [self.collection objectAtIndex:indexPath.row];
  
  [[PHImageManager defaultManager] requestImageForAsset:asset targetSize:collageCell.imgView.frame.size contentMode:PHImageContentModeAspectFit options:nil resultHandler:^(UIImage * _Nullable result, NSDictionary * _Nullable info) {
    collageCell.imgView.image = result;
  }];
}

@end
