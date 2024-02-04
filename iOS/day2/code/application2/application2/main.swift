//
//  main.swift
//  application2
//
//  Created by Amit Kulkarni on 11/07/23.
//

import Foundation

// rule
// - always prefer using immutable over mutable
// - always prefer using constants over variables


// function
// - number of parameters
//   - parameterless: function which accepts no parameters
//   - parameterized: function which accepts at least one parameter
// - name
//   - named function
//   - anonymous function -> closure
// - return value
//   - non-returning function
//   - returning function
// - note
//   - parameter(s) of a function can not be declared implicitly
//   - every parameter must be declared explicitly (with required type)
// - declaration of a function
//   - func <function name> (<external name> <internal name>: <data type) -> <return type> {
//        // function body
//     }


// parameterless function declaration
// function myFunction() { .. }
func function1() {
    print("inside function1")
}

// function call / function invocation
// function1()

// parameterized function declaration with one parameter
// java: void function2(int param) { .. }
func function2(param: Int) {
    print("inside function2")
    print("param = \(param), type = \(type(of: param))")
}

// function call
// java: function2(100);
function2(param: 100)

func function3(value: String) {
    print("inside function3")
    print("value = \(value)")
}

// function3(value: "test")


// parameterized function declaration with multiple parameters
func function4(p1: Int, p2: Int) {
    print("inside function4")
    print("\(p1) + \(p2) = \(p1 + p2)")
}

//function4(p1: 10, p2: 20)

func printPersonInfo(name: String, address: String, email: String, phone: String, age: Int, company: String) {
    print("inside printPersonInfo")
    print("name = \(name)")
    print("address = \(address)")
    print("email = \(email)")
    print("phone = \(phone)")
    print("age = \(age)")
    print("company = \(company)")
}

//printPersonInfo(name: "person1", address: "pune", email: "person1@test.com", phone: "+91345345", age: 40, company: "test company")

// param:
// - external name (label)
// - used while passing value for the param
// p1:
// - internal name
// - used inside the function to refer the parameter
func function5(param p1: Int) {
    print("inside function5")
    print("param = \(p1)")
}

//function5(param: 200)


func square(of integerNumber: Int) {
    print("inside square")
    print("square = \(integerNumber * integerNumber)")
}

//square(integerNumber: 20)
//square(of: 20)


// when external name is _ (underscore)
// the caller must not use external name
func cube(_ num: Int) {
    print("inside cube")
    print("cube = \(num * num * num)")
}

//cube(10)


func function6(_ p1: Int, _ p2: Int, _ p3: Int) {
    print("inside function6")
    print("p1 = \(p1), p2 = \(p2), p3 = \(p3)")
}

// function6(10, 20, 30)


func function7(name: String, address: String) -> Void {
}

//function7(name: "test", address: "pune")


// returning function
// - function must declare return type if it is not void
// - if function has return type void, it may not need to be declared
// - function which returns a value
func add(p1: Int, p2: Int) -> Int {
    return p1 + p2
}

// call add function, read the return value (30) and
// capture it in a constant named addition
let addition = add(p1: 10, p2: 20)
print("addition = \(addition)")


// final int num = 100;

// 0x1000
//var num = 100

// var test = 0x1000 + 200
//var test = num + 200

//
//let num = 100

// var test = 100 + 200








