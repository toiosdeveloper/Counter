//
//  CACountPresenter.h
//  Counter
//
//  Created by Jeff Gilbert on 8/23/13.
//  Copyright (c) 2013 Mutual Mobile. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CACountView.h"
#import "CACountInteractorIO.h"


@interface CACountPresenter : NSObject <CACountInteractorOutput>
@property (nonatomic, weak)     id<CACountView>             view;
@property (nonatomic, strong)   id<CACountInteractorInput>  interactor;

- (void)updateView;
- (void)increment;
- (void)decrement;
@end
