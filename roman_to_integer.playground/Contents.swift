import UIKit

class Solution {
    func romanToInt(_ s: String) -> Int {
        var result: Int = 0
        var temp: Int = 0
        let stringArray = Array(s)
        for (index, element) in stringArray.enumerated() {
            if element == "I" {
                if index != stringArray.count - 1 && (stringArray[index + 1] == "V" || stringArray[index + 1] == "X") {
                    temp = 1
                }else {
                    result += 1
                }
            }else if element == "V" {
                result += temp != 0 ? 5 - temp : 5
                temp = 0
            }else if element == "X" {
                if index != stringArray.count - 1 && (stringArray[index + 1] == "L" || stringArray[index + 1] == "C") {
                    temp = 10
                }else {
                    result += temp != 0 ? 10 - temp : 10
                    temp = 0
                }
            }else if element == "L" {
                result += temp != 0 ? 50 - temp : 50
                temp = 0
            }else if element == "C" {
                if index != stringArray.count - 1 && (stringArray[index + 1] == "D" || stringArray[index + 1] == "M") {
                    temp = 100
                }else {
                    result += temp != 0 ? 100 - temp : 100
                    temp = 0
                }
            }else if element == "D" {
                result += temp != 0 ? 500 - temp : 500
                temp = 0
            }else if element == "M" {
                result += temp != 0 ? 1000 - temp : 1000
                temp = 0
            }
        }
        return result
    }
}

let sol = Solution().romanToInt("MCDLXXVI")
