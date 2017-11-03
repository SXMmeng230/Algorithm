//
//  InsertSort.m
//  Algorithm
//
//  Created by 小萌 on 2017/11/3.
//  Copyright © 2017年 小萌. All rights reserved.
//

#import "InsertSort.h"

@implementation InsertSort
+(void)insertSortWithArr:(NSMutableArray *)arr
{
    for (int i = 1; i < arr.count; i++) {
        id temp = arr[i];//保存临时变量
        int j = i;//从i元素开始向前
        while (j>0 && arr[j-1]>= temp) {//从i-1元素开始向前比较，大于或者等于temp时，就将其插入该位置
            arr[j] = arr[j -1];
            j--;//继续向前对比
        }
        arr[j] = temp;
    }
}
+(void)half_insertSortWithArr:(NSMutableArray *)arr
{
    for (int i = 1; i < arr.count; i++) {
        id temp = arr[i];//保存临时变量
        int low = 0;
        int high = i - 1;
        while (low <= high) {//当low大于high说明已经找到最小位置，跳出循环
            int mid = (low + high) / 2;
            if (arr[mid]>temp) {
                high = mid - 1;
            }else{
                low = mid + 1;
            }
        }
        for (int j = i; j>low; j--) {
            arr[j] = arr[j - 1];//从最小位置往后移动元素
        }
        arr[low]= temp;
    }
}
@end
