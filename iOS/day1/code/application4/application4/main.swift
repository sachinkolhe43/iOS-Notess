//
//  main.swift
//  application4
//
//  Created by Amit Kulkarni on 10/07/23.
//

import Foundation

// nil
// - similar to null in Java

// String str = null;

// can not declare a variable which stores null implcitly
// var str = nil


// optional string
var str: String? = nil
print("str = \(str), type = \(type(of: str))")

str = "test"
print("str = \(str!), type = \(type(of: str))")

// optional int
var num: Int? = nil
print("num = \(num), type = \(type(of: num))")

num = 100
print("num = \(num!), type = \(type(of: num))")


// unwrapping a value from optional variable
var num2 = num!
print("type of num = \(type(of: num)), type of num2 = \(type(of: num2))")


// nil value CAN NOT be unwrapped
var myVar: String? = nil

myVar = "test"

// check if myVar has nil value
if myVar != nil {
    print("myVar = \(myVar!)")
} else {
    print("myVar is nil, can not be unwrapped")
}


// Optional<Float>
var myVar2: Float? = nil

// Optional<Float>
var myVar3 = myVar2

if myVar2 != nil {
    // Float
    var myVar4 = myVar2!
}
