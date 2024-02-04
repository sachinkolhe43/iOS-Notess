//
//  main.swift
//  application6
//
//  Created by Amit Kulkarni on 13/07/23.
//

import Foundation

// protocol
// - contract between a service provider and server consumer
// - similar to an interface in Java
// - collection of method declarations
// - does not provide any implementation or definition
// - protocol must be conformed by a class to implement the methods
// - in a protocol there are two types of methods
//   - required: default behavior
//   - optional: depending on the requirement, an implementor class may or may implement the method

// rule
// - the method can be called only if, it is present in type of reference
// - e.g. 1
//   - let r1 = Rectangle()
//   - type of reference => Rectangle, type of object => Rectangle
//   - r1.rectangleMethod() => can be called as it exists in type of reference

// - e.g. 2
//   - let r2: Shape = Rectangle()
//   - type of reference => Shape, type of object => Rectangle
//   - r2.rectangleMethod() => can not be called as it does not exist in the type of reference (Shape)

// - e.g. 3
//   - let r3: Rectangle = Rectangle()
//   - type of reference => Rectangle, type of object => Rectangle
//   - r3.rectangleMethod() => can be called as it exists in type of reference


protocol Shape {
    func draw()
    func area()
    func perimeter()
}

// class <subclass name>: <super class name>, <protocol> { .. }
 
// class Rectagle is conforming the Shape protocol
class Rectangle: Shape {
    func draw() { print("rectangle is drawing..") }
    func area() { print("area of rectangle") }
    func perimeter() { print("perimeter of rectagle") }
    func rectangleMethod() { print("method in a rectangle") }
}

// class Circle is conforming the Shape protocol
class Circle: Shape {
    func draw() { print("Circle is drawing..") }
    func area() { print("area of Circle") }
    func perimeter() { print("perimeter of Circle") }
    func circleMethod() { print("method is circle") }
}

// type of r1 => Rectangle
let r1 = Rectangle()
r1.area()
r1.draw()
r1.perimeter()
r1.rectangleMethod()

// type of r2 => Shape
let r2: Shape = Rectangle()
r2.area()
r2.draw()
r2.perimeter()
//r2.rectangleMethod()
