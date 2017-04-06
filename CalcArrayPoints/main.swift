//
//  main.swift
//  CalcArrayPoints
//
//  Created by Abhishek Chauhan on 4/6/17.
//  Copyright © 2017 Abhishek Chauhan. All rights reserved.
//

import Foundation

func add(left: Int, right: Int) -> Int {
    return left + right
}

func subtract(left: Int, right: Int) -> Int {
    return left - right
}

func multiply(left: Int, right: Int) -> Int {
    return left * right
}

func divide(left: Int, right: Int) -> Int {
    return left / right
}

func mathOperation(left: Int, right: Int, operation: (Int, Int) -> Int) -> Int {
    return operation(left, right)
}

func add(array: [Int]) -> Int {
    var sum = 0
    for i in 0 ..< array.count {
        sum += array[i]
    }
    return sum
}

func multiply(array: [Int]) -> Int {
    var product = 1
    for i in 0 ..< array.count {
        product *= array[i]
    }
    return product
}

func count(array: [Int]) -> Int {
    return array.count
}

func average(array: [Int]) -> Int {
    return add(array: array) / count(array: array)
}

func reduce(array: [Int], operation: ([Int]) -> Int) -> Int {
    return operation(array)
}

func add(p1: (Int, Int), p2: (Int, Int)) -> (Int, Int) {
    return (add(left: p1.0, right: p2.0), add(left: p1.1, right: p2.1))
}

func subtract(p1: (Int, Int), p2: (Int, Int)) -> (Int, Int) {
    return (subtract(left: p1.0, right: p2.0), subtract(left: p1.1, right: p2.1))
}

func add(p1: [String : Int], p2: [String : Int]) -> [String : Int]? {
    if p1["x"] == nil || p1["y"] == nil || p2["x"] == nil || p2["y"] == nil {
        return nil
    }
    return ["x": add(left: p1["x"]!, right: p2["x"]!), "y": add(left: p1["y"]!, right: p2["y"]!)]
}

func subtract(p1: [String : Int], p2: [String : Int]) -> [String : Int]? {
    if p1["x"] == nil || p1["y"] == nil || p2["x"] == nil || p2["y"] == nil {
        return nil
    }
    return ["x": subtract(left: p1["x"]!, right: p2["x"]!), "y": subtract(left: p1["y"]!, right: p2["y"]!)]
}

func add(p1: [String : Double]?, p2: [String : Double]?) -> [String : Double]? {
    if(p1 == nil || p2 == nil || p1!["x"] == nil || p1!["y"] == nil || p2!["x"] == nil || p2!["y"] == nil){
        return nil
    }
    return ["x": p1!["x"]! + p2!["x"]!, "y": p1!["y"]! + p2!["y"]!]
}

func subtract(p1: [String : Double]?, p2: [String : Double]?) -> [String : Double]? {
    if(p1 == nil || p2 == nil || p1!["x"] == nil || p1!["y"] == nil || p2!["x"] == nil || p2!["y"] == nil){
        return nil
    }
    return ["x": p1!["x"]! - p2!["x"]!, "y": p1!["y"]! - p2!["y"]!]
}

