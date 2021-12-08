import UIKit

class Node {
    var operation: String?
    var value: Float?
    var leftNode: Node?
    var rightNode: Node?
    
    init(operation: String?, value: Float?, leftNode: Node?, rightNode: Node?) {
        self.operation = operation
        self.value = value
        self.leftNode = leftNode
        self.rightNode = rightNode
    }
}

//     +
//    *  5
//  25 6

let sixNode = Node(operation: nil, value: 6, leftNode: nil, rightNode: nil)
let fiveNode = Node(operation: nil, value: 5, leftNode: nil, rightNode: nil)
let twentyfiveNode = Node(operation: nil, value: 25, leftNode: nil, rightNode: nil)

let mult25_6Node = Node(operation: "*", value: nil, leftNode: twentyfiveNode, rightNode: sixNode)
let rootPluslusNode = Node(operation: "+", value: nil,  leftNode: mult25_6Node, rightNode: fiveNode)

func evaluate(node: Node) -> Float {
    if let value = node.value {
        return value
    }
    
    if node.operation == "+" {
        return evaluate(node: node.leftNode!) + evaluate(node: node.rightNode!)
    }else if node.operation == "-" {
        return evaluate(node: node.leftNode!) - evaluate(node: node.rightNode!)
    }else if node.operation == "*" {
        return evaluate(node: node.leftNode!) * evaluate(node: node.rightNode!)
    }else if node.operation == "/"{
        return evaluate(node: node.leftNode!) / evaluate(node: node.rightNode!)
    }
    
    return 0
}

evaluate(node: rootPluslusNode)
