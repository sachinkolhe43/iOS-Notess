//
//  main.swift
//  application5
//
//  Created by Amit Kulkarni on 11/07/23.
//

import Foundation

// tuple
// - immutable collection of similar or dissimilar values
// - the way to retrieve the value from tuple is different than array
// - created using ()
// - values need to be retrieved using dot (.) syntax
// - values can not be retrieved dynamically (using for loop)
// - when to prefer tuple
//   - the number of values is less
//   - the values will never change in future


func function1() {
    // create a tuple to store a person's information
    let person = ("person1", "pune", "person1@test.com", 40)
    print("person = \(person), type = \(type(of: person))")
    
    // create a tuple for storing mobile values
    let mobile = ("iPhone 13 Pro Max", "Apple", "A13", 206000, 5.5, false)
    print("mobile = \(mobile), type = \(type(of: mobile))")
}

//function1()


func function2() {
    
    // array of values
    let arrayPerson = ["person1", "pune", "person1@test.com", "40"]
    print("name = \(arrayPerson[0])")
    print("address = \(arrayPerson[1])")
    print("email = \(arrayPerson[2])")
    print("age = \(arrayPerson[3])")
    
    print()
    
    // create a tuple to store a person's information
    let personTuple = ("person1", "pune", "person1@test.com", 40)
    print("name = \(personTuple.0)")
    print("address = \(personTuple.1)")
    print("email = \(personTuple.2)")
    print("age = \(personTuple.3)")
}

//function2()


func function3() {
    // requirement: store person details like name, age, address, canVote in the same sequence
    // explicit declaration of tuple
    let person: (String, Int, String, Bool) = ("person1", 40, "pune", true)
    print("person = \(person), type = \(type(of: person))")
    
    print()
    
    print("name = \(person.0)")
    print("age = \(person.1)")
    print("address = \(person.2)")
    print("canVote = \(person.3)")
}

//function3()


func function4() {
    // requirement: store person details like name, age, address, canVote in the same sequence
    // explicit declaration of tuple
    let person: (name: String, age: Int, address: String, canVote: Bool) = ("person1", 40, "pune", true)
    print("person = \(person), type = \(type(of: person))")
    print()
    
    print("name = \(person.0)")
    print("age = \(person.1)")
    print("address = \(person.2)")
    print("canVote = \(person.3)")
    
    print()
    
    print("name = \(person.name)")
    print("age = \(person.age)")
    print("address = \(person.address)")
    print("canVote = \(person.canVote)")
}

function4()
