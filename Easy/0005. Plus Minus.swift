class Solution {

// Created by Cuma Haznedar

// Diagonal Difference

// Given an array of integers, calculate the ratios of its elements that are positive, negative, and zero. Print the decimal value of each fraction on a new line with  places after the decimal.
// Note: This challenge introduces precision problems. The test cases are scaled to six decimal places, though answers with absolute error of up to  are acceptable.

// Function Description

// Complete the plusMinus function in the editor below.
// plusMinus has the following parameter(s):
// int arr[n]: an array of integers

//Print

// Print the ratios of positive, negative and zero values in the array. Each value should be printed on a separate line with  digits after the decimal. The function should not return a value.

//Input Format

//The first line contains an integer, n, the size of the array.
//The second line contains n space-separated integers that describe arr[n].

//Print the following  lines, each to  decimals:

// 1. proportion of positive values
// 2. proportion of negative values
// 3. proportion of zeros

func plusMinus(arr: [Int]) -> Void {
    
    var total = arr.count
    
    var positiveCount = arr.filter {$0 > 0}.count
    var negativeCount = arr.filter {$0 < 0}.count
    var zeroCount = arr.filter { $0 == 0}.count

    var positiveRadio = Double(positiveCount) / Double(total)
    var negativeRadio = Double(negativeCount) / Double(total)
    var zeroRadio = Double(zeroCount) / Double(total)
    
    print(String(format: "%.6f", positiveRadio))
    print(String(format: "%.6f", negativeRadio))
    print(String(format: "%.6f", zeroRadio))

  }
}
