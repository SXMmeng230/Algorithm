//
//  MergeSort.m
//  Algorithm
//
//  Created by 小萌 on 2017/12/19.
//  Copyright © 2017年 小萌. All rights reserved.
//

#import "MergeSort.h"

@implementation MergeSort
+ (void)mergeWithArr:(NSMutableArray *)list
{
    [self mergeWithArr:list left:0 right:(int)list.count - 1];
}
+ (void)mergeWithArr:(NSMutableArray *)list left:(int)left  right:(int)right
{
    if (left < right) {
        int middle = (left + right) / 2;
        [self mergeWithArr:list left:left right:middle];
        [self mergeWithArr:list left:middle + 1 right:right];
        [self mergeWithArr:list left:left middle:middle right:right];
    }
}
+ (void)mergeWithArr:(NSMutableArray *)list left:(int)left  middle:(int)middle right:(int)right
{
    int k = 0;
    int i = left;
    int j = middle + 1;
    NSMutableArray *temp = [NSMutableArray array];
    while (i <= middle && j<= right) {
        if (list[i] > list[j]) {
            temp[k] = list[j];
            j++;
            k++;
        }else{
            temp[k] = list[i];
            i++;
            k++;
        }
    }
    while (i <= middle) {
        temp[k] = list[i];
        i++;
        k++;
    }
    while (j <= middle) {
        temp[k] = list[j];
        j++;
        k++;
    }
    for (int i = 0; i < temp.count; i++) {
        list[i + left] = temp[i];
    }
}
@end
