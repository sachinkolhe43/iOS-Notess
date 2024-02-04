//
//  main.swift
//  application5
//
//  Created by Amit Kulkarni on 12/07/23.
//

import Foundation

// function type
// - type of function
// - contains
//   - parameter information
//   - return type of the function
// - e.g. (Int, Int) -> Int
//   - the above function type says the function
//     - is accepting two Int parameters
//     - is returning Int value
// - it is needed to declare a function explicitly


func function1() {
    
    // implicit declaration of num (Int)
    let num = 100

    // explicit
    // var num2: Int = 100
    
    // local or inner or nested
    func innerFunction() {
        print("inside innerFunction")
    }
    
    // implicit declaration of function reference
    let myInnerFunction = innerFunction
    
    // calling the function using original function name
    innerFunction()
    
    // calling the funcrtion using function reference
    myInnerFunction()
}

//function1()

func function2() {
    
    // function type = () -> () or () -> Void
    func innerFunction1() {}
    print("type of innerFunction1 = \(type(of: innerFunction1))")
    
    // functin type = (Int) -> () or (Int) -> Void
    func innerFunction2(p1: Int) {}
    print("type of innerFunction2 = \(type(of: innerFunction2))")
    
    // function type = (String, Int, Bool) -> ()
    func innerFunction3(p1: String, p2: Int, p3: Bool) {}
    print("type of innerFunction3 = \(type(of: innerFunction3))")

    // function type = (Int, Int) -> Int
    func innerFunction4(p1: Int, p2: Int) -> Int { return p1 + p2 }
    print("type of innerFunction4 = \(type(of: innerFunction4))")
    
    // function type = () -> Int
    func innerFunction5() -> Int { return 10 }
    print("type of innerFunction5 = \(type(of: innerFunction5))")
    
    // myInnerFunction1 must point to another function which
    // - does not accept any parameter
    // - does not return anything
    let myInnerFunction1: () -> () = innerFunction1
    let myInnerFunction2: (Int) -> Void = innerFunction2
    let myInnerFunction3: (String, Int, Bool) -> Void = innerFunction3
    let myInnerFunction4: (Int, Int) -> Int = innerFunction4
    let myInnerFunction5: () -> Int = innerFunction5
    
}

//function2()


func function3() {
    
    // (Int, Int) -> Void
    func innerFunction1(p1: Int, p2: Int) {}
    
    // (Int, Int) -> Void
    func innerFunction2(p1: Int, p2: Int) {}
    
    var myInnerFunction1: (Int, Int) -> Void = innerFunction1
    
    // since myInnerFunction1 is mutable, it is allowed to change
    // the function to innerFunction2 (as both of them are having same
    // function type)
    myInnerFunction1 = innerFunction2
    
    let myInnerFunction2: (Int, Int) -> Void = innerFunction1
    
    // as myInnerFuntion2 is constant, you can not change the function
    // once it gets initialized
    // myInnerFunction2 = innerFunction2
}


func function4() {

    func add(p1: Int, p2: Int) { print("\(p1) + \(p2) = \(p1 + p2)") }
    func subtract(p1: Int, p2: Int) { print("\(p1) - \(p2) = \(p1 - p2)") }
    func divide(p1: Int, p2: Int) { print("\(p1) / \(p2) = \(p1 / p2)") }
    func multiply(p1: Int, p2: Int) { print("\(p1) * \(p2) = \(p1 * p2)") }

    func execute(function: (Int, Int) -> Void) {
        print("inside execute")
        function(10, 20)
        function(20, 30)
        function(30, 40)
        function(40, 50)
        function(50, 60)
        function(60, 70)
    }
    
    // execute(function: add)
    // execute(function: subtract)
    // execute(function: divide)
    // execute(function: multiply)
    
    func execute2(function: (Int, Int) -> Void, p1: Int, p2: Int) {
        print("inside execute2")
        function(p1, p2)
    }
    
    execute2(function: add, p1: 30, p2: 40)
    execute2(function: subtract, p1: 30, p2: 40)
}

//function4()


func function5() {
    
    func innerFunction1(p1: Int) {
        print("inside innerFunction1")
        print("p1 = \(p1), type = \(type(of: p1))")
    }
    
    // innerFunction1(p1: 10)
    
    func innerFunction2() {
        print("inside innerFunction2")
    }
    
    func innerFunction3(p1: () -> Void) {
        // function reference
        // p1 = innerFunction4
        print("inside innerFunction3")
        print("type = \(type(of: p1))")
        
        // since p1 is of type function type
        // making a call to the function
        p1()
    }
    
    func innerFunction4() {
        print("inside innerFunction4")
    }
    
    // innerFunction3(p1: innerFunction4)
    innerFunction3(p1: innerFunction2)
    
}
    
//function5()


func function6() {
    func square(num: Int) {
        print("square of \(num) = \(num * num)")
    }
    
    func cube(num: Int) {
        print("cube of \(num) = \(num * num * num)")
    }
    
    func execute(function: (Int) -> Void) {
        print("inside execute")
        function(10)
        function(20)
        function(30)
    }
    
    execute(function: square)
    execute(function: cube)
}

//function6()














