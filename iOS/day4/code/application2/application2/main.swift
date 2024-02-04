//
//  main.swift
//  application2
//
//  Created by Amit Kulkarni on 13/07/23.
//

import Foundation

// class
// - collection of similar or dissimilar data types
// - a way to create object(s)
// - template to create object(s)
// - is a reference type
// - by default it does not provide an initializer


/*

 class Point {
    int x;
    int y;
 }
 
*/

class Point {
    var x: Int?
    var y: Int?
}

// instantiation: creating an object of class
// Point point = new Point();

// in swift no 'new' keyword is used to create an object
// the reference is constant and not the object
let point1 = Point()
print("point1 = \(point1), type = \(type(of: point1))")

// since the reference is constant and not the object
// you can easily change the values
point1.x = 10
point1.y = 10

// point2 is a mutable reference
var point2 = Point()

// you can easily change the values
point2.x = 10
point2.y = 10

let point3 = Point()

// since the point1 is constant, once it starts referencing an object
// it can not refer another object
// point1 = point3

// since point2 is a mutable reference, it is possible to change
// the reference to another object
point2 = point3
