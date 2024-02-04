//
//  main.swift
//  application3
//
//  Created by Amit Kulkarni on 11/07/23.
//

import Foundation

// collection
// - collection/array of values
// - types
//   - array: mutable collection of values
//   - tuple: immutable collection values
//   - set: collection of unique values
//   - dictionary: collection of key-value pairs

// array
// - collection of similar type of values
// - may allow duplicate values
// - array can be created inside or outside a function
// - honors the insertion order
//   - values can be retrieved in the insertion order
// - declared using []

func function1() {
    // empty array can not be declared implicitly
    
    // empty array
    // like Java
    var array1: Array<Int> = []
    print("array1 = \(array1), type = \(type(of: array1))")
    
    // empty array
    // swift syntax
    var array2: [Int] = []
    print("array2 = \(array2), type = \(type(of: array2))")
}

//function1()

func function2() {
    // array with some values declared implcitly
    let array1 = [10, 20, 30, 40]
    print("array1 = \(array1), type = \(type(of: array1))")
    
    // array with some values declared explicitly
    let array2:Array<Int> = [10, 20, 30, 40]
    print("array2 = \(array2), type = \(type(of: array2))")
    
    // array with some values declared explicitly
    let array3:[Int] = [10, 20, 30, 40]
    print("array3 = \(array3), type = \(type(of: array3))")
}

//function2()


func function3() {
    // array of Strings (implicit)
    let array1 = ["India", "USA", "UK", "Japan"]
    print("array1 = \(array1), type = \(type(of: array1))")
    
    // array of Strings (explicit)
    let array2: Array<String> = ["India", "USA", "UK", "Japan"]
    print("array2 = \(array2), type = \(type(of: array2))")
    
    // array of Strings (explicit)
    let array3: [String] = ["India", "USA", "UK", "Japan"]
    print("array3 = \(array3), type = \(type(of: array3))")
}

//function3()


func function4() {
    // mutable array
    // like ArrayList in Java (collections framework)
    var array = [10, 20, 30, 40, 50]
    
    print(array)
    
    // get the length of the array
    // - property: count
    print("number of values in array = \(array.count)")
    
    // append a new value at the end of the array
    array.append(60)
    array.append(70)
    print(array)
     
    // append multiple values at a time
    // append all the values in the array individually
    array.append(contentsOf: [80, 90, 100])
    print(array)
    
    // delete the last value from array
    array.removeLast()
    print(array)
    
    // delete the first value from array
    array.removeFirst()
    print(array)
}

//function4()


func function5() {
    var array = [10, 20, 30, 40, 50]
    print(array)
    
    // [10, 15, 20, 30, 40, 50]
    // insert value 15 in between 10 and 20
    array.insert(15, at: 1)
    print(array)
    
    // [10, 15, 20, 30, 40, 50]
    // insert value 25 in between 20 and 30
    array.insert(25, at: 3)
    print(array)
    
    // insert value 35 in between 30 and 40
    array.insert(35, at: 5)
    print(array)
    
    // insert value 45 in between 40 and 50
    array.insert(45, at: 7)
    print(array)
}

//function5()


func function6() {
    var array = [10, 20, 30, 40, 50]
    print(array)
    
    // remove a value in between an array
    // remove value 30
    array.remove(at: 2)
    print(array)
    
    // check if the array is empty
    print("is array empty = \(array.isEmpty)")
    
    // remove all the values
    array.removeAll()
    print(array)
    
    // check if the array is empty
    print("is array empty = \(array.isEmpty)")
    
    if let first = array.first {
        print("first value = \(first)")
    }
    
    // print("last value = \(array.last)")
}


//function6()


func function7() {
    // immutable array
    // - like array in Java
    let array = [10, 20, 30, 40, 50]
    print(array)
    
    print("size of array = \(array.count)")
    
    // append a value 60 at the end
    // array.append(60)
    print(array)
}

function7()
    
