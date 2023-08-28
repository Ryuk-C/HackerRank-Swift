class Solution {
  
// Created by Cuma Haznedar

// Stair Case
// https://www.hackerrank.com/challenges/staircase/problem

// Its base and height are both equal to . It is drawn using # symbols and spaces. The last line is not preceded by any spaces. Write a program that prints a staircase of size n.

// Sample Input = 6

// Sample Output

//     #
//    ##
//   ###
//  ####
// #####
//######

func staircase(n: Int) -> Void {
    
    for i in 1...n {
        
        var space = String(repeating: " ", count: n - i)
        var hash = String(repeating: "#", count: i)
        
        print(space + hash)
        
    }
 }

}
