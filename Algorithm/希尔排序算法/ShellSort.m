//
//  ShellSort.m
//  Algorithm
//
//  Created by 小萌 on 2017/11/3.
//  Copyright © 2017年 小萌. All rights reserved.
//

#import "ShellSort.h"

@implementation ShellSort
+ (void)shellSortWithArr:(NSMutableArray *)arr
{
    int gas = arr.count / 2.0;//根据步长分组
    while (gas >=1) {
        for (int i = gas; i < arr.count; i ++) {//对每一组进行直接插入排序
            id temp = arr[i];
            int j = i;
            while (j >= gas && temp < arr[j - gas]) {
                arr[j] = arr[j-gas];
                j-=gas;
            }
            arr[j] = temp;
        }
        gas/=2;
    }
}
@end
