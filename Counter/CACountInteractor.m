//
//  CACountInteractor.m
//  Counter
//
//  Created by Jeff Gilbert on 8/22/13.
//  Copyright (c) 2013 Mutual Mobile. All rights reserved.
//

#import "CACountInteractor.h"


@interface CACountInteractor()
@property (nonatomic, assign)   NSUInteger  count;
@end


@implementation CACountInteractor

- (void)requestCount
{
    [self sendCount];
}


- (void)increment
{
    ++self.count;
    [self sendCount];
}


- (void)decrement
{
	if ([self canDecrement])
	{
        --self.count;
        [self sendCount];
    }
}


- (BOOL)canDecrement
{
	return (self.count > 0);
}


- (void)sendCount
{
    [self.output updateCount:self.count];
}

@end
