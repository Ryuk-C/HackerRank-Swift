class Solution {
  
// Created by Cuma Haznedar

// Time Conversion
// https://www.hackerrank.com/challenges/time-conversion/problem
  
// Given a time in -hour AM/PM format, convert it to military (24-hour) time.
// Note: - 12:00:00AM on a 12-hour clock is 00:00:00 on a 24-hour clock.
// - 12:00:00PM on a 12-hour clock is 12:00:00 on a 24-hour clock.

// Function Description

// Complete the timeConversion function in the editor below. It should return a new string representing the input time in 24 hour format.
// timeConversion has the following parameter(s):
// string s: a time in  hour format
  
// Returns
// string: the time in 24 hour format

func timeConversion(s: String) -> String {
    
    var dateFormatter = DateFormatter()
    dateFormatter.dateFormat = "h:mm:ssa"
    
    if let date = dateFormatter.date(from: s) {
      
        var timeFormetter = DateFormatter()
        timeFormetter.dateFormat = "HH:mm:ss"
      
        if let timeString = timeFormetter.string(for: date) {
          
            return timeString
          
        }else {
          
            return "Error converting to 24-hour format"
          
        }
      
    }else {
        
         return "Invalid Time Format"
    }
}
}
