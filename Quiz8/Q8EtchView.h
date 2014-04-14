//
//  Q8EtchView.h
//  Quiz8
//
//  Created by Vincent Pillinger on 4/13/14.
//  Copyright (c) 2014 Vincent Pillinger. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface Q8EtchView : UIView
@property (nonatomic) CGPoint currentPoint;
@property (nonatomic, strong) UIBezierPath *currentPath;
@end
