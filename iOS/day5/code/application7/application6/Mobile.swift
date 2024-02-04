//
//  Mobile.swift
//  application6
//
//  Created by Amit Kulkarni on 14/07/23.
//

import Foundation

class Mobile {
    var model: String!
    var company: String!
    var price: String!
    
    init(model: String!, company: String!, price: String!) {
        self.model = model
        self.company = company
        self.price = price
    }
    
    func printDetails() {
        print("model = \(self.model!)")
        print("company = \(self.company!)")
        print("price = \(self.price!)")
    }
}
