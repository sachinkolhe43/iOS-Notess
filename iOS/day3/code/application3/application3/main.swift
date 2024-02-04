//
//  main.swift
//  application3
//
//  Created by Amit Kulkarni on 12/07/23.
//

import Foundation

func function1() {
    // implicit declaration of array of arrays
    // size = 3x3
    let array1 = [
        [10, 20, 30],
        [40, 50, 60],
        [70, 80, 90]
    ]
    
    print("array1 = \(array1)")
    print("type = \(type(of: array1))")
    
    print()
    
    // explicit declaration of 2d array
    // size: 3x2
    let array2: Array<Array<Int>> = [
        [10, 20],
        [30, 40],
        [50, 60]
    ]
    
    print("array2 = \(array2)")
    print("type = \(type(of: array2))")
    
    print()
    
    // explicit declaration of 2d array
    // size: 3x2
    let array3: [[Int]] = [
        [10, 20],
        [30, 40],
        [50, 60]
    ]
    
    print("array3 = \(array3)")
    print("type = \(type(of: array3))")
    
    for array in array3 {
        for value in array {
            print("value = \(value)")
        }
        
        print()
    }
}

//function1()

func function2() {
    // size = 2x3
    let array = [
        (10, 20, 30),
        (40, 50, 60)
    ]
    print(array)
    print(type(of: array))
    
    for tuple in array {
        print("1st = \(tuple.0)")
        print("2nd = \(tuple.1)")
        print("3rd = \(tuple.2)")
        print()
    }
}

//function2()


func function3() {
    // array of dictionaries
    let persons = [
        ["name": "person1", "address": "pune"],
        ["name": "person2", "address": "mumbai"],
        ["name": "person3", "address": "nashik"],
        ["name": "person4", "address": "satara"],
        ["name": "person5", "address": "karad"]
    ]
    
    print(persons)
    print(type(of: persons))
    
    print()
    
    for dictionary in persons {
        print("name = \(dictionary["name"]!)")
        print("address = \(dictionary["address"]!)")
        print()
    }
}

//function3()
