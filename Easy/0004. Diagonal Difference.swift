class Solution {

   // Created by Cuma Haznedar

   // Diagonal Difference
   // https://www.hackerrank.com/challenges/diagonal-difference/problem
   
   // Given a square matrix, calculate the absolute difference between the sums of its diagonals.

   // For example, the square matrix arr is shown below:

   // 1 2 3
   // 4 5 6
   // 9 8 9  

   // The left-to-right diagonal 1 + 5 + 9 = 15. The right-to-left diagonal 3 + 5 + 9 = 17. Their absolute difference is |15 - 17| = 2.

   // Function description
   //diagonalDifference takes the following parameter:
   //int arr[n][m]: an array of integers

   //Input Format
   //The first line contains a single integer, n, the number of rows and columns in the square matrix arr.
   //Each of the next  lines describes a row, arr[i] , and consists of n space-separated integers arr[i][j].

  func diagonalDifference(arr: [[Int]]) -> Int {

    var sumLeftToRight = 0
    var sumRightToLeft = 0

    var leftDiagonalIndex = 0
    var rightDiagonalIndex = arr[0].count - 1
    
    for row in arr {
        sumLeftToRight += row[leftDiagonalIndex]
        sumRightToLeft += row[rightDiagonalIndex]
        
        leftDiagonalIndex += 1
        rightDiagonalIndex -= 1
    }
    
    return abs(sumLeftToRight - sumRightToLeft)
  }
}
