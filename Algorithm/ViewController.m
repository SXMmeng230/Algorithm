//
//  ViewController.m
//  Algorithm
//
//  Created by 小萌 on 2017/11/2.
//  Copyright © 2017年 小萌. All rights reserved.
//

#import "ViewController.h"
#import "BubbleManager.h"
#import "InsertSort.h"
#import "ShellSort.h"
#import "QuickSort.h"
#import "Heapsort.h"
#import "MergeSort.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    NSMutableArray *arr = @[@3,@1,@5,@8,@10,@6,@19,@4,@2,@7].mutableCopy;
    //冒泡排序
    //    [BubbleManager bubbleWithArray:arr];
    //插入排序
    //    [InsertSort insertSortWithArr:arr];
//    [InsertSort half_insertSortWithArr:arr];
    //希尔排序
//    [ShellSort shellSortWithArr:arr];
    //快速排序
//    [QuickSort quickSortWithLeft:0 right:arr.count - 1 arr:arr];
    //堆排序
//    [Heapsort heapSortWithArr:arr];
    //归并排序
    [MergeSort mergeWithArr:arr];
    NSLog(@"%@",arr);

}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
