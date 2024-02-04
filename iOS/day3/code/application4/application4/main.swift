//
//  main.swift
//  application4
//
//  Created by Amit Kulkarni on 12/07/23.
//

import Foundation

// closure

// global variable
var globalVar = 200

// global function
// - function declared outside of any entity (class/struct/function)
// - can be called from anywhere in the code

// outer function
func function1() {
    // local variable
    let num = 100
    print("num = \(num), type = \(type(of: num))")
    
    // local or inner function
    // - function declared inside an function
    func innerFunction() {
        print("inside innerFunction")
    }

    // call local function
    // function2()
    print("innerFunction = \(innerFunction), type = \(type(of: innerFunction))")
}


//function1()

// since function2 is a local function of function1
// function2 can not be called outside of function1
// innerFunction()


func function3() {
    // Int
    var num1 = 100
    
    // Int
    // create a new variable with a value from num1
    var num2 = num1
    
    print("num1 = \(num1), num2 = \(num2)")
    num2 = 200
    print("num1 = \(num1), num2 = \(num2)")
    
    
    // function2 is variable of type Function
    func function2() {
        print("inside function2")
    }
    
    // create a new variable of type function and point to the existing
    // function named function2
    let myFunction2 = function2
    
    // function2()
    // myFunction2()
    
    func add(p1: Int, p2: Int) {
        print("inside add")
        print("\(p1) + \(p2) = \(p1 + p2)")
    }
    
    // create a function reference
    let myAdd = add
    
    // when you are calling function with original name
    // use parameter external name (label)
    add(p1: 10, p2: 20)
    
    // when you are callign the function using function reference
    // you can not pass parameters with labels
    myAdd(10, 30)
}

function3()
