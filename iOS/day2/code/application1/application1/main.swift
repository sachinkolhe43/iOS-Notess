//
//  main.swift
//  application1
//
//  Created by Amit Kulkarni on 11/07/23.
//

import Foundation

// optional
var name: String? = "test"

// nil value can not be unwrapped
//if name != nil {
//    print("name = \(name!), type = \(type(of: name))")
//} else {
//    print("name is nil, can not be unwrapped")
//}

//if name != nil {
//    let strValue = name!
//}

// assignment statement
let strValue2 = name

// if statement
// if value of name is not nil then create a constant named strValue
// and store the unwrapped (String) value inside it
// conditional unwrapping
if let strValue = name {
    print("name = \(name), strValue = \(strValue)")
    print("type of name = \(type(of: name)), type of strValue = \(type(of: strValue))")
}


let num: Int? = nil
if let num = num {
    print("num = \(num), type = \(type(of: num))")
} else {
    print("num is nil")
}

let salary: Float? = nil
if let salary = salary {
    print("salary = \(salary), type = \(type(of: salary))")
} else {
    print("salary is nil")
}

let canVote: Bool? = true
if let canVote = canVote {
    print("canVote = \(canVote), type = \(type(of: canVote))")
}
