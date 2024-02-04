//
//  SendDataDelegate.swift
//  application5
//
//  Created by Amit Kulkarni on 14/07/23.
//

import Foundation

protocol SendDataDelegate {
    func onResult(firstName: String, lastName: String, email: String)
}
