import UIKit

protocol GroceryItem {
    func cost() -> Float
    func description() -> String
}

struct Apple: GroceryItem {
    let name: String
    let price: Float
    func cost() -> Float {
        return price
    }
    func description() -> String {
        return "Name: \(name), Price: \(price)"
    }
}

struct Beef: GroceryItem {
    let name: String
    let weight: Float
    let pricePerPound: Float
    func cost() -> Float {
        return weight * pricePerPound
    }
    func description() -> String {
        return "Name: \(name), Weight: \(weight), Price: \(pricePerPound)"
    }
}

struct Customer {
    let name: String
    let groceries: [GroceryItem]
}

struct GroceryStore {
    func printReceipt(customer: Customer) {
        print("Print receipt for customer: \(customer.name)")
        customer.groceries.forEach { item in
            print("\(item.description())")
        }
        let total = customer.groceries.reduce(0, {$0 + $1.cost()})
        print("total cost: \(total)")
    }
}

let greenApple = Apple(name: "Green Apple", price: 1.99)
let goldenApple = Apple(name: "Golden Apple", price: 5.99)
let newyorkSteak = Beef(name: "New York Steak", weight: 2.5, pricePerPound: 9.99)
let bill = Customer(name: "Bill", groceries: [greenApple, goldenApple, newyorkSteak])

let safeway = GroceryStore()
safeway.printReceipt(customer: bill)
