import UIKit

// sum of number array using reduce function
// reduce func accept inital value and iterate 2 values
let mySum = [1, 2, 3, 4, 5, 6].reduce(0) { $0 + $1 }
print("Sum of array: \(mySum)")

// multiply by reduce function
let myProducts = [1, 2, 3, 4, 5].reduce(1, { $0 * $1 })
print("My products: \(myProducts)")

// transform array of words into sentence
let fects = ["akp", "is", "the", "greatest", "of", "all", "time"]

func transformIntoSentence(for words: [String]) -> String {
    var initialResult = ""
    
    words.forEach { initialResult += $0 + " "}
    
    return initialResult
}

let trueFacts = transformIntoSentence(for: fects)
print("true facts with traditional: \(trueFacts)")

let factsReduce = fects.reduce("", { $0 + " " + $1 })
print("true facts with reduce: \(factsReduce)")
