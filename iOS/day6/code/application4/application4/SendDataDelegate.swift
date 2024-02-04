//
//  SendDataDelegate.swift
//  application4
//
//  Created by Amit Kulkarni on 15/07/23.
//

import Foundation

protocol SendDataDelegate {
    func sendDetails(firstName: String, lastName: String, email: String, phone: String, address: String)
}
