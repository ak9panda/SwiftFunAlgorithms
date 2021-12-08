import UIKit

// [1] -> [1]
// [1, [2]] -> [1, 2]
// [1, [2, 3]] -> [1, 2, 3]
// [1,  [2, [3, 4]]] -> [1, 2, 3, 4]

func flattenArray(nestedArray: [Any]) -> [Int] {
    
    var result = [Int]()
    
    for element in nestedArray {
        if element is Int {
            result.append(element as! Int)
        }else {
            let recursionResult = flattenArray(nestedArray: element as! [Any])
            for element in recursionResult {
                result.append(element)
            }
        }
    }
    
    return result
}

let myFlattenedArray = flattenArray(nestedArray: [1, [2, [3, [4]]]])
