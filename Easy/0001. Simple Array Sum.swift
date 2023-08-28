class Solution {

    // Created by Cuma Haznedar

    // Simple Array Sum
    // https://www.hackerrank.com/challenges/simple-array-sum/problem
    
    //Given an array of integers, find the sum of its elements.
    //For example, if the array ar = [1, 3, 5], 1 + 3 + 5 = 9 so return 9.

    //Function Description

    //Complete the simpleArraySum function in the editor below. It must return the sum of the array elements as an integer.
    //simpleArraySum has the following parameter(s):
    //ar: an array of integers

    //Input Format

    //The first line contains an integer, n, denoting the size of the array.
    //The second line contains n space - separated integers representing the array's elements.

    //Output Format

    //Print the sum of the array's elements as a single integer.

    func simpleArraySum(ar: [Int]) -> Int {

        var result = 0

        for value in ar {

            result += value

        }

        return result

        /*
        Here is a simple version of answer. There is reduce() function in Swift. Basically, The reduce() function turns a collection into one Value.
         
        return ar.reduce(0, +)
        */
    }
}
