//
//  main.swift
//  application5
//
//  Created by Amit Kulkarni on 13/07/23.
//

import Foundation


// inheritance
// - swift does not support multiple inheritance
// - types: single, multilevel, hierarchical, hybrid


// super/base/parent class
class Person {
    var name: String?
    var address: String?
    var age: Int?
    
    init(name: String, address: String, age: Int) {
        self.name = name
        self.address = address
        self.age = age
    }
    
    func printDetails() {
        print("name = \(self.name!)")
        print("address = \(self.address!)")
        print("age = \(self.age!)")
    }
}

// subclass/derived/child class
// Employee is subclass of Person
class Employee: Person {
    var id: Int?
    
    init(id: Int, name: String, address: String, age: Int) {
        // calling Person initializer
        // in Java: super(name, address, age)
        super.init(name: name, address: address, age: age)
        self.id = id
    }
    
    // Employee is overriding the printDetails()
    override func printDetails() {
        print("id = \(self.id!)")
        super.printDetails()
    }
}

let person = Person(name: "person1", address: "pune", age: 10)
//person.name = "person1"
//person.address = "pune"
//person.age = 10

// printDetails will be called from Person class
person.printDetails()

print()

let employee = Employee(id:1, name: "employee1", address: "mumbai", age: 30)
//employee.name = "employee1"
//employee.address = "mumbai"
//employee.age = 30
//employee.id = 1

// printDetails() will be called from Employee class
employee.printDetails()

