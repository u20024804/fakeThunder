//
//  DownloadOperation.m
//  fakeThunder
//
//  Created by Martian Z on 13-10-19.
//  Copyright (c) 2013年 MartianZ. All rights reserved.
//
/*
 Copyright (C) 2012-2014 MartianZ
 
 fakeThunder is free software: you can redistribute it and/or modify
 it under the terms of the GNU General Public License as published by
 the Free Software Foundation, either version 3 of the License, or
 (at your option) any later version.
 
 fakeThunder is distributed in the hope that it will be useful,
 but WITHOUT ANY WARRANTY; without even the implied warranty of
 MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 GNU General Public License for more details.
 
 You should have received a copy of the GNU General Public License
 along with this program.  If not, see <http://www.gnu.org/licenses/>.
 */
#import "DownloadOperation.h"

@implementation DownloadOperation

- (id)initWithTaskEntity:(TaskEntity *)task {
    if (self = [super init]) {
        entity = task;
        _isFinish = NO;
    }
    return self;
}

-(void)start
{
    if (self.isCancelled) {
        _isFinish = YES;
    } else {
        _isFinish = NO;
        [entity performDownload];
        _isFinish = YES;
    }
}

-(BOOL)isFinished {
    return _isFinish;
}

@end
