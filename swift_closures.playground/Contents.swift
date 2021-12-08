import UIKit

// function with closure
func filteredWithPredicateCosures(closures: (Int) -> Bool, numbers: [Int]) -> [Int] {
    var filtered = [Int]()
    
    for num in numbers {
        if closures(num) {
            filtered.append(num)
        }
    }
    
    return filtered
}

// closure functions
func greaterthan_5(value: Int) -> Bool { return value > 5 }

func dividedby_5(value: Int) -> Bool { return value % 5 == 0 }

// use with closure function
let filteredList = filteredWithPredicateCosures(closures: dividedby_5(value:), numbers: [30,45,60,7,8,9])

// user without closure function
let lessthanFilteredList = filteredWithPredicateCosures(closures: { num in
    return num < 9
}, numbers: [1,3,5,7,9,11])
