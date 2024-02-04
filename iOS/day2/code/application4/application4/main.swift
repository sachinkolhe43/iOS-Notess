//
//  main.swift
//  application4
//
//  Created by Amit Kulkarni on 11/07/23.
//

import Foundation

// range operator
// - generates value(s) from lower to upper bound
// - types
//   - open range operator
//   - half close range operator

// for loop
// - traditional
//   - gives you the control
//   - you can decide the lower and upper bound
// - for..each (for..in)
//   - give all the values from first to last positions
//   - does not give the index position

func function1() {
    // open range operator
    // - generate a array of numbers from 0 to 10
    // - inlcuding both 0 and 10
    // - [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
    let array = 0...10
    print(array)
    for value in array {
        print("value = \(value)")
    }
}

//function1()

func function2() {
    // half close range operator
    // - generate the values from 0 to 10
    // - from 0 to 9 (10 will be excluded)
    // - [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]
    let array = 0..<10
    for value in array {
        print("value = \(value)")
    }
}

//function2()


func function3() {
    // array of integers
    let array = [10, 20, 30, 40, 50]
    
    // traditional for loop
    // java: for (int index = 0; index < array.length(); index++) ...
    for index in 0..<array.count {
        print("value at \(index) = \(array[index])")
    }
}

//function3()


func function4() {
    // array of integers
    let array = [10, 20, 30, 40, 50]
    
    // get all the values using for..each
    for value in array {
        print("value = \(value)")
    }
}

//function4()


func function5() {
    var array = ["India", "USA", "UK", "China", "Japan"]
    
    // remove China
    var chinaIndex = -1
    for index in 0..<array.count {
        if array[index] == "China" {
            chinaIndex = index
            break
        }
    }
    
    if chinaIndex != -1 {
        array.remove(at: chinaIndex)
    }
    print(array)
    
    // insert Bhutan at the end
    array.append("Bhutan")
    print(array)
    
    // get all the values using traditional for loop
    for index in 0..<array.count {
        print("country at \(index) = \(array[index])")
    }
    
    // remove all values
    array.removeAll()
    print(array)
}

function5()
