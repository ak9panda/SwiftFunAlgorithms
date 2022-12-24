import UIKit

// Solving Pascal's Triangle

// Time: O(n ^ 2) where n is number of Rows
// Space: O(n ^ 2) where n is number of Rows
func solve(_ numRows: Int) -> [[Int]] {
    
    if numRows == 0 { return [] }
    
    if numRows == 1 { return [[1]] }
    
    var results = [[Int]]()
    results.append([1])
    
    for i in 1..<numRows {
        var newRow = [1]
        let prevRow = results[i - 1]
        
        for j in 1..<prevRow.count {
            let sum = prevRow[j] +  prevRow[j - 1]
            newRow.append(sum)
        }
        
        newRow.append(1)
        results.append(newRow)
    }
    
    return results
}

let answer = solve(5)

for row in answer {
    print(row)
}

