//
//  main.swift
//  application6
//
//  Created by Amit Kulkarni on 12/07/23.
//

import Foundation

func function1() {
    func add(p1: Int, p2: Int) {
        print("\(p1) + \(p2) = \(p1 + p2)")
    }
    
    func subtract(p1: Int, p2: Int) {
        print("\(p1) - \(p2) = \(p1 - p2)")
    }
    
    func execute(function: (Int, Int) -> Void) {
        print("inside execute")
        function(10, 20)
    }
    
    // calling the function execute with original function name (add)
    // execute(function: add)
    
    // function reference to subtract
    let mySubtract = subtract
    
    // calling the execute function with function reference (mySubtract)
    // execute(function: mySubtract)
    
    // calling the execute function with function defining at the time of calling
    
    // closure: anonymous function in swift
//    execute(function: {(p1: Int, p2: Int) -> Void in
//        print("\(p1) / \(p2) = \(p1 / p2)")
//    })
    
    execute(function: { (p1: Int, p2: Int) in
        print("\(p1) * \(p2) = \(p1 * p2)")
    })
    
}

//function1()


func function2() {
    func execute(function: () -> Void) {
        print("inside execute")
        function()
    }
    
    // closure
    execute(function: { () in
        print("inside closure")
    })
}

function2()

