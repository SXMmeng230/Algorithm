//
//  QuickSort.m
//  Algorithm
//
//  Created by 小萌 on 2017/11/3.
//  Copyright © 2017年 小萌. All rights reserved.
//

#import "QuickSort.h"

@implementation QuickSort
+ (void)quickSortWithLeft:(int)left right:(int)right arr:(NSMutableArray *)arr{
    
    if (left >= right) {
        return;
    }
    int i = left;
    int j = right;
    id temp = arr[left];
    while (i < j) {
        while (i < j && arr[j] > temp) {//从最右边开始查找，直到找到小于temp的值就停止
            j--;//继续下一次循环
        }
        arr[i] = arr[j];//将右边小于temp的值调换位置
        while (i < j && arr[i] < temp) {//从左边开始查找，直到找到大于temp的值就停止
            i++;
        }
        arr[j] = arr[i];//将大于temp的值放在j的位置
    }
    arr[i] = temp;//此刻小于temp的值在左边，大于temp值在右边，一次递归结束
    [self quickSortWithLeft:left right:i - 1 arr:arr];//左边开始递归
    [self quickSortWithLeft:i + 1 right:right arr:arr];//右边开始递归
}
@end
