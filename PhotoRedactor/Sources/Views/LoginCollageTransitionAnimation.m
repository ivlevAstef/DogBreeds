//
//  LoginCollageTransitionAnimation.m
//  PhotoRedactor
//
//  Created by Alexander Ivlev on 15/03/2017.
//  Copyright © 2017 SIA. All rights reserved.
//

#import "LoginCollageTransitionAnimation.h"
#import "LoginViewController.h"
#import "CollageViewController.h"

@implementation LoginCollageTransitionAnimation

- (NSTimeInterval)transitionDuration:(nullable id <UIViewControllerContextTransitioning>)transitionContext {
  return 2.0;
}

- (void)animateTransition:(id <UIViewControllerContextTransitioning>)transitionContext {
  LoginViewController* login = [transitionContext viewControllerForKey:UITransitionContextFromViewControllerKey];
  CollageViewController* collage = [transitionContext viewControllerForKey:UITransitionContextToViewControllerKey];
  
  UIView* containerView = [transitionContext containerView];
  [containerView insertSubview:collage.view atIndex:0];
  
  // it's very bad but simple ^)
  collage.nickLbl.text = login.nickTxf.text;
  
  // предустановка позиций, и расчет финальных
  CGRect nickBackFrame = collage.nickBackground.frame;
  collage.nickBackground.frame = login.nickTxf.frame;
  
  CGRect nickLblFrame = collage.nickLbl.frame;
  nickLblFrame.origin.x = login.nickTxf.frame.origin.x;
  nickLblFrame.size.width = login.nickTxf.frame.size.width;
  
  collage.nickLbl.frame = login.nickTxf.frame;
  
  [UIView animateWithDuration:2.0 animations:^{
    collage.nickBackground.frame = nickBackFrame;
    
    login.nickTxf.frame = nickLblFrame;
    collage.nickLbl.frame = nickLblFrame;
    
    login.goBtn.frame = collage.view.frame;
    
    login.view.alpha = 0;
      
  } completion:^(BOOL finished) {
    [transitionContext completeTransition: ![transitionContext transitionWasCancelled]];
  }];
}

@end;
