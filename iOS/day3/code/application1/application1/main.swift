//
//  main.swift
//  application1
//
//  Created by Amit Kulkarni on 12/07/23.
//

import Foundation

// set
// - collection of only unique values
// - set can be created using []
// - can not be created implicitly
// - does not honor the insertion order (as it uses hashing behind the scene to store the values internally)


func function1() {
    
    // declaration of set explicitly
    let a1: Array<Int> = [10, 20, 30, 40, 50, 10, 20, 30, 40, 50, 10, 20, 30, 40, 50]
    print("a1 = \(a1), type = \(type(of: a1))")
    
    // declaration of set explicitly
    let s1: Set<Int> = [10, 20, 30, 40, 50, 10, 20, 30, 40, 50, 10, 20, 30, 40, 50]
    print("s1 = \(s1), type = \(type(of: s1))")
    
}

//function1()

func function2() {
    let s1: Set<Int> = [10, 20, 30, 40, 50]
    let s2: Set<Int> = [40, 50, 60, 70, 80]
    
    // union operation
    print("s1 union s2 = \(s1.union(s2))")
    print("s2 union s1 = \(s2.union(s1))")
}

//function2()


func function3() {
    let s1: Set<Int> = [10, 20, 30, 40, 50]
    let s2: Set<Int> = [40, 50, 60, 70, 80]
    
    // intersection operation
    print("s1 intersection s2 = \(s1.intersection(s2))")
    print("s2 intersection s1 = \(s2.intersection(s1))")
}

//function3()


func function4() {
    let s1: Set<Int> = [10, 20, 30, 40, 50]
    let s2: Set<Int> = [40, 50, 60, 70, 80]
    
    // subtraction operation
    // - finding out the uncommon elements from other set

    // [10, 20, 30]
    // find out the uncommon elements from s1 compared with s2
    print("s1 subtract s2 = \(s1.subtracting(s2))")
    
    // [60, 70, 80]
    // find out the uncommon elements from s2 compared with s1
    print("s2 subtract s1 = \(s2.subtracting(s1))")
}

//function4()


func function5() {
    let s1: Set<Int> = [10, 20, 30, 40, 50]
    
    // since the set does not keep the elements in an order
    // you can not retrieve the values from set in an order
    // you can not retriece the values using index positions
    // print("s1[0] = \(s1[0])")
    
    for value in s1 {
        print("value = \(value)")
    }
}

function5()
