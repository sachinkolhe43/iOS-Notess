//
//  main.swift
//  application4
//
//  Created by Amit Kulkarni on 13/07/23.
//

import Foundation

// relationship: Bank has many accounts

class Account {
    var number: Int?
    var holderName: String?
    var holderAddress: String?
    
    init(number: Int, holderName: String, holderAddress: String) {
        self.number = number
        self.holderName = holderName
        self.holderAddress = holderAddress
    }
    
    func printDetails() {
        if let name = self.holderName {
            print("name = \(name)")
        }
        
        if let number = self.number {
            print("account number = \(number)")
        }
        
        if let address = self.holderAddress {
            print("address = \(address)")
        }
    }
}

class Bank {
    var name: String?
    var address: String?
    
    // a bank has many accounts
    // var accounts: [Account]?
    var accounts: [Account] = []
        
    init(name: String, address: String) {
        self.name = name
        self.address = address
    }
    
    func addAccount(name: String, number: Int, address: String) {
        // creating an object of Account
        let account = Account(number: number, holderName: name, holderAddress: address)
        
        // add the object to the accounts array
        self.accounts.append(account)
    }
    
    func printBankDetails() {
        print("name: \(self.name!)")
        print("address: \(self.address!)")
        
        print("- account holders -")
        for account in self.accounts {
            account.printDetails()
            print()
        }
    }
}


//let bank = Bank(name: "Bank of India", address: "Pune")
//bank.addAccount(name: "person1", number: 1, address: "pune")
//bank.addAccount(name: "person2", number: 2, address: "satara")
//bank.addAccount(name: "person3", number: 3, address: "mumbai")
//
//bank.printBankDetails()


// --------

class Address {
    var city: String?
    var state: String?
    var zipcode: Int?
}

// relationship: Person has-an address
class Person {
    var name: String?
    var address: Address?
}

// relationship: Home has-an address
class Home {
    var rooms: Int?
    var address: Address?
}
