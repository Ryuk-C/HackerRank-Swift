class Solution {

    // Created by Cuma Haznedar

    // Compare the Triplets

    // Alice and Bob each created one problem for HackerRank. A reviewer rates the two challenges, awarding points on a scale from 1 to 100 for three categories: problem clarity, originality, and difficulty.
    // The rating for Alice's challenge is the triplet a = (a[0], a[1], a[2]), and the rating for Bob's challenge is the triplet b = (b[0], b[1], b[2]).

    //Example

    // a = [1, 2, 3]
    // b = [3, 2, 1]
    // For elements *0*, Bob is awarded a point because a[0] .
    // For the equal elements a[1] and b[1], no points are earned.
    // Finally, for elements 2, a[2] > b[2] so Alice receives a point.
    // The return array is [1, 1] with Alice's score first and Bob's second.

    // Input Format

    // The first line contains 3 space-separated integers, a[0], a[1], and a[2], the respective values in triplet a.
    // The second line contains 3 space-separated integers, b[0], b[1], and b[2], the respective values in triplet b.

    func compareTriplets(a: [Int], b: [Int]) -> [Int] {

        var alicePoints = 0
        var bobPoints = 0

        for i in 0..<a.count {

            if a[i] > b[i] {
                alicePoints += 1
            } else if a[i] < b[i] {
                bobPoints += 1
            }

        }

        return [alicePoints, bobPoints]

    }
}
