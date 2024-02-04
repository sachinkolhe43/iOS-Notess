//
//  Contact.swift
//  application4
//
//  Created by Amit Kulkarni on 15/07/23.
//

import Foundation

class Contact {
    var firstName: String!
    var lastName: String!
    var email: String!
    var address: String!
    var phone: String!
    
    init(firstName: String!, lastName: String!, email: String!, address: String!, phone: String!) {
        self.firstName = firstName
        self.lastName = lastName
        self.email = email
        self.address = address
        self.phone = phone
    }
}
