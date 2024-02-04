//
//  main.swift
//  application1
//
//  Created by Amit Kulkarni on 13/07/23.
//

import Foundation

// struct
// - collection of similar or dissimilar data types
// - is a value type
// - by default provides an initializer

// declaration of a struct
struct Point {
    var x: Int
    var y: Int
}

// implicit declaration
// - mandatory to pass initial values of every member of struct
let point1 = Point(x: 10, y: 10)
print("point1 = \(point1), type = \(type(of: point1))")

// since point1 is a constant, you can not change the members
// point1.x = 100
// point1.y = 100

// explicit declaration
var point2: Point = Point(x: 20, y: 20)
print("point2 = \(point2), type = \(type(of: point2))")

// since the point2 is variable of type Point, its possible to change the memmbers
point2.x = 100
point2.y = 100


//let num = 100
//num = 200

//var num = 100
//num = 200

