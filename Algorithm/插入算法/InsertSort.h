//
//  InsertSort.h
//  Algorithm
//
//  Created by 小萌 on 2017/11/3.
//  Copyright © 2017年 小萌. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface InsertSort : NSObject
//直接插入排序
+(void)insertSortWithArr:(NSMutableArray *)arr;
//折半插入排序
+(void)half_insertSortWithArr:(NSMutableArray *)arr;

@end
