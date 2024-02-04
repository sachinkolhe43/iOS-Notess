//
//  main.swift
//  application2
//
//  Created by Amit Kulkarni on 12/07/23.
//

import Foundation

// dictionary
// - collection of key-value pairs
// - dictionary always returns Optional data type

// data -> raw -> meaningless
// - "person1", 40, "pune", "p1@test.com"
// information -> meaningful -> adding keys
// - JSON
// - XML
// - YAML


func function1() {
    // tuple
    let person = ("person1", 40, "pune", "p1@test.com")
    print("name = \(person.0)")
    print("age = \(person.1)")
    print("address = \(person.2)")
    print("email = \(person.3)")
    
    print()
    
    // implicit declartion of a dictionary
    // - rule: every key-value pair must use the same data type
    // - the example below has all keys of String data type
    //   and all values of String data type
    let personDictionary = [
        "name": "person1",
        "address": "pune",
        "email": "p1@test.com"
    ]
    print(personDictionary)
    print("type = \(type(of: personDictionary))")
    
    
    // implicit declaration of dictionary
    // every key-value pair is following: <String, Int>
    let marks = [
        "maths": 80,
        "bio": 60,
        "english": 78
    ]
    
    print(marks)
    print("type = \(type(of: marks))")
}

//function1()


func function2() {
    // explicit declaration
    let personDictionary: Dictionary<String, String> = [
        "name": "person1",
        "address": "pune",
        "email": "p1@test.com"
    ]
    print(personDictionary)
    print("type = \(type(of: personDictionary))")
    
    
    // explicit declaration of dictionary
    // every key-value pair is following: <String, Int>
    let marks: Dictionary<String, Int> = [
        "maths": 80,
        "bio": 60,
        "english": 78
    ]
    
    print(marks)
    print("type = \(type(of: marks))")
}

// function2()

func function3() {
    // explicit declaration
    let personDictionary: [String: String] = [
        "name": "person1",
        "address": "pune",
        "email": "p1@test.com"
    ]
    print(personDictionary)
    print("type = \(type(of: personDictionary))")
    
    
    // explicit declaration of dictionary
    // every key-value pair is following: <String, Int>
    let marks: [String: Int] = [
        "maths": 80,
        "bio": 60,
        "english": 78
    ]
    
    print(marks)
    print("type = \(type(of: marks))")
}

// function3()


func function4() {
    // Any -> value can be of any data type
    let person: Dictionary<String, Any> = [
        "name": "person1",
        "age": 40,
        "email": "p1@test.com",
        "canVote": true,
        "salary": 15.60
    ]
    
    print(person)
    print(type(of: person))
    
    print()
    
    // Any -> value can be of any data type
    let person2: [String: Any] = [
        "name": "person1",
        "age": 40,
        "email": "p1@test.com",
        "canVote": true,
        "salary": 15.60
    ]
    
    print(person2)
    print(type(of: person2))
}

//function4()



func function5() {
    let person: [String: String] = [
        "name": "person1",
        "address": "pune",
        "email": "p1@test.com"
    ]
    
    // dictionary always returns Optional data type
    // print("name = \(person["name"])")
    // print("address = \(person["address"])")
    // print("email = \(person["email"])")
    // print("age = \(person["age"])")
    
    if let name = person["name"] {
        print("name = \(name)")
    }
    
    if let address = person["address"] {
        print("address = \(address)")
    }
    
    if let email = person["email"] {
        print("email = \(email)")
    }
    
    if let age = person["age"] {
        print("age = \(age)")
    }
}

//function5()


func function6() {
    // var num: Int = 10
    // num = "test"
    
    var myVar: Any = 10
    print("myVar = \(myVar), type = \(type(of: myVar))")
    
    myVar = "test"
    print("myVar = \(myVar), type = \(type(of: myVar))")
    
    myVar = true
    print("myVar = \(myVar), type = \(type(of: myVar))")
    
    myVar = 10.50
    print("myVar = \(myVar), type = \(type(of: myVar))")
    
    // Any allows any type of value except nil
    // myVar = nil
}


function6()
