//
//  main.swift
//  application3
//
//  Created by Amit Kulkarni on 13/07/23.
//

import Foundation

// class
// - collection of members (properties) and member functions (methods)

// method types
// - initializer
//   - similar to constructor
//   - unlike constructor, the initializer always starts with 'init'
//   - like constructor, gets called automatically when an object gets created
//   - func keyword is not used while declaring initializer
//   - types
//     - default initializer
//       - always parameterless
//       - init() { ... }
//     - parameterized initializer
// - deinitializer
//   - like destructor used to deinitialize an object
//   - deinit { .. }

class Person {
    var name: String?
    var address: String?
    var age: Int?
    var email: String?
    
    // default initializer
    init() {
        print("inside default initializer")
    }
    
    // parameterized initializer
    init(name: String, address: String, age: Int?, email: String) {
        print("inside parameterized initializer")
        self.name = name
        self.address = address
        self.age = age
        self.email = email
    }
    
    // deinitializer
    deinit {
        print("inside deinitializer")
    }
    
    // setters or mutators
    func setName(name: String) { self.name = name }
    func setAddress(address: String) { self.address = address }
    func setAge(age: Int) { self.age = age }
    func setEmail(email: String) { self.email = email }
    
    // getters or inspectors
    func getName() -> String? { return self.name }
    func getAddress() -> String? { return self.address }
    func getAge() -> Int? { return self.age }
    func getEmail() -> String? { return self.email }

    // facilitator
    func printDetails() {
        if let name = self.name {
            print("name = \(name)")
        } else {
            print("name = -missing-")
        }
        
        if let address = self.address {
            print("address = \(address)")
        } else {
            print("address = -missing-")
        }
        
        if let age = self.age {
            print("age = \(age)")
        } else {
            print("age = -missing-")
        }
        
        if let email = self.email {
            print("email = \(email)")
        } else {
            print("name = -missing-")
        }
    }
    
}

// creating an object of Person class
let person1 = Person()
person1.printDetails()

let person2 = Person(name: "person2", address: "pune", age: nil, email: "person2@test.com")
person2.printDetails()


