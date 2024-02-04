//
//  main.swift
//  application3
//
//  Created by Amit Kulkarni on 10/07/23.
//

import Foundation

// explicit declaration
// var <var name>:<data type> = <initial value>

// int num = 100;

// integer
// signed integer which uses 8 bits
// 1: reserved for sign
// 7: reserved for value (0 - 127)
var num: Int8 = 100
print("num = \(num), type = \(type(of: num))")

num = 126
print("num = \(num), type = \(type(of: num))")

// unsigned
// 8: reserved for value (0 - 255)
var num2: UInt8 = 100
num2 = 255

// float
var salary: Float = 10.50
print("salary = \(salary), type = \(type(of: salary))")

// double
var myDoubleVar: Double = 10.50
print("myDoubleVar = \(myDoubleVar), type = \(type(of: myDoubleVar))")

// string
var name: String = "steve"
print("name = \(name), type = \(type(of: name))")

// bool
// immutable
let canVote: Bool = false
print("canVote = \(canVote), type = \(type(of: canVote))")

// since canVote is a constant, the value can not be changed
// canVote = true
