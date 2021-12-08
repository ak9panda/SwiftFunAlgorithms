import UIKit

func fibForNumSteps(numSteps: Int) -> [Int] {
    var sequence = [0, 1]
    
    if numSteps <= 1 {
        return sequence
    }
    
    for _ in 0..<numSteps - 1 {
        let first = sequence[sequence.count - 2]
        let second = sequence.last!
        
        sequence.append((first + second))
    }
    
    return sequence
}

fibForNumSteps(numSteps: 5)

func fibForNumStepsRecursion(numSteps: Int, first: Int, second: Int) -> [Int] {
    if numSteps == 0 {
        return []
    }
    
    return [first + second] + fibForNumStepsRecursion(numSteps: numSteps - 1, first: second, second: first + second)
}
 
fibForNumStepsRecursion(numSteps: 5, first: 0, second: 1)
