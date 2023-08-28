class Solution {
  
// Created by Cuma Haznedar

// Mini-Max Sum

// Given five positive integers, find the minimum and maximum values that can be calculated by summing exactly four of the five integers. 
// Then print the respective minimum and maximum values as a single line of two space-separated long integers.

//Output Format

//Print two space-separated long integers denoting the respective minimum and maximum values that can be calculated by summing exactly four of the five integers. 
//(The output can be greater than a 32 bit integer.)

  func miniMaxSum(arr: [Int]) -> Void {
    
    let minSum = arr.sorted().dropLast().reduce(0, +)
    let maxSum = arr.sorted().dropFirst().reduce(0, +)
    
    print("\(minSum) \(maxSum)")

 }
}
