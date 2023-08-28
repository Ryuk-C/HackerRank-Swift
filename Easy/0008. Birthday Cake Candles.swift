class Solution {
  
// Created by Cuma Haznedar

// Birthday Cake Candles 
// https://www.hackerrank.com/challenges/birthday-cake-candles/problem
  
// You are in charge of the cake for a child's birthday. You have decided the cake will have one candle for each year of their total age. 
// They will only be able to blow out the tallest of the candles. Count how many candles are tallest.

// Function Description

// Complete the function birthdayCakeCandles in the editor below.
// birthdayCakeCandles has the following parameter(s):
// int candles[n]: the candle heights

// Returns
// int: the number of candles that are tallest

  func birthdayCakeCandles(candles: [Int]) -> Int {
    
    let sortedList = candles.sorted()
    let occurrences = sortedList.filter { $0 == sortedList.last }.count
    
    return occurrences

 }
}
