//
//  BubbleManager.m
//  Algorithm
//
//  Created by 小萌 on 2017/11/2.
//  Copyright © 2017年 小萌. All rights reserved.
//

#import "BubbleManager.h"

@implementation BubbleManager
+ (void)bubbleWithArray:(NSMutableArray *)originArr
{
    int i,j;
    for (i = 0; i < originArr.count; i++) {
        for (j = 0; j < originArr.count - i -1; j++) {
            if (originArr[j] > originArr[j + 1]) {
                id temp = originArr[j];
                originArr[j] = originArr[j+1];
                originArr[j+1] = temp;
            }
        }
    }
}
@end
