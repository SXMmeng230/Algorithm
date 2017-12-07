//
//  Heapsort.m
//  Algorithm
//
//  Created by 小萌 on 2017/12/7.
//  Copyright © 2017年 小萌. All rights reserved.
//

#import "Heapsort.h"

@implementation Heapsort
+ (void)heapSortArr:(NSMutableArray *)array size:(int)size index:(int)index
{
    int left = 2 *index + 1;
    int right = left + 1;
    while (right < size) {
        if (array[index] > array[right] && array[index] > array[left]) {//节点大于子树直接返回
            return;
        }
        if (array[right] >= array[left]) {
            [array exchangeObjectAtIndex:index withObjectAtIndex:right];//右节点大于子节点，交换节点
            index = right;
        }else{
            [array exchangeObjectAtIndex:index withObjectAtIndex:left];
            index = left;
        }
        left = 2 * index + 1;//调整子树
        right = left + 1;
    }
    //只有左子树时
    if (left < size && array[index] < array[left] ) {
        [array exchangeObjectAtIndex:index withObjectAtIndex:left];
    }
}
+ (void)heapSortWithArr:(NSMutableArray *)list
{
    int size = (int)list.count;
    //构建堆
    for (int i = size - 1; i >=0 ; i --) {
        [self heapSortArr:list size:size index:i];
    }
    while (size > 0) {
        [list exchangeObjectAtIndex:size - 1 withObjectAtIndex:0];//将根与数组末尾交换
        size --;
        [self heapSortArr:list size:size index:0];//整理子树
    }
}
@end
