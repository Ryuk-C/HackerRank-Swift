class Solution {
  
// Created by Cuma Haznedar

// Ice Cream Parlor
// https://www.hackerrank.com/challenges/icecream-parlor/problem
  
// Two friends like to pool their money and go to the ice cream parlor. They always choose two distinct flavors and they spend all of their money.
// Given a list of prices for the flavors of ice cream, select the two that will cost all of the money they have.

// Example.  m = 6, cost = [1, 3, 4, 5, 6]
// The two flavors that cost  1 and  5 meet the criteria. Using 1-based indexing, they are at indices 1 and 4.
  
func icecreamParlor(m: Int, arr: [Int]) -> [Int] {
    
    var flavorIndices: [Int] = []
    var flavorToIndex: [Int: Int] = [:]
    
    for (index, price) in arr.enumerated() {
        let remaining = m - price
        
        if let previousIndex = flavorToIndex[remaining] {

            flavorIndices.append(previousIndex + 1) 
            flavorIndices.append(index + 1)
            break
        }
        
        flavorToIndex[price] = index
    }
    
    return flavorIndices
    
}
}
