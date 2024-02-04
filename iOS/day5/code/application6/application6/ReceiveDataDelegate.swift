//
//  ReceiveDataDelegate.swift
//  application6
//
//  Created by Amit Kulkarni on 14/07/23.
//

import Foundation

protocol ReceiveDataDelegate {
    func onResult(model: String, company: String, price: String)
}
