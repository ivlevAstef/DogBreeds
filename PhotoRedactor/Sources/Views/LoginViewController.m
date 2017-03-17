//
//  LoginViewController.m
//  PhotoRedactor
//
//  Created by Alexander Ivlev on 14/03/2017.
//  Copyright © 2017 SIA. All rights reserved.
//

#import "LoginViewController.h"
#import "LoginCollageTransitionAnimation.h"

@interface LoginViewController () <UITextFieldDelegate, UIViewControllerTransitioningDelegate>

@end

@implementation LoginViewController

- (void)viewDidLoad {
  [super viewDidLoad];
  
  [self.nickTxf setDelegate: self];
  [self.goBtn setEnabled:false];
}

- (void)viewWillAppear:(BOOL)animated {
  [super viewWillAppear: animated];
  
  [self.nickTxf becomeFirstResponder];
}

- (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string {
  
  NSString* newString = [textField.text stringByReplacingCharactersInRange:range withString:string];
  
  BOOL enabled = [newString length] > 0;
  [self.goBtn setEnabled: enabled];
  
  return YES;
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
  segue.destinationViewController.transitioningDelegate = self;
}

- (nullable id <UIViewControllerAnimatedTransitioning>)animationControllerForPresentedController:(UIViewController *)presented presentingController:(UIViewController *)presenting sourceController:(UIViewController *)source {
  
  return [LoginCollageTransitionAnimation new];
}

@end

