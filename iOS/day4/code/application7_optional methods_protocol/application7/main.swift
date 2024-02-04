//
//  main.swift
//  application7
//
//  Created by Amit Kulkarni on 13/07/23.
//

import Foundation

// Objective-C
// - NSObject is the root class of Objective-C

@objc protocol Shape {
    func draw()
    @objc optional func area()
}

class Rectangle: Shape {
    func draw() { print("Rectangle is drawing..") }
    func area() { print("Rectangle area..") }
}

class ArbitoryShape: Shape {
    func draw() { print("ArbitoryShape is drawing..") }
}

func execute(shape: Shape) {
    let num: Int? = 10
    if let num = num {
        print("num = \(num)")
    }
    
    shape.draw()
    
    // check if method exists in the class
    // if yes: call the method
    // else: skill calling the method
    shape.area?()
}

let r = Rectangle()
execute(shape: r)

let a = ArbitoryShape()
execute(shape: a)

