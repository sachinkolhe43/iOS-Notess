//
//  main.swift
//  application7
//
//  Created by Amit Kulkarni on 12/07/23.
//

import Foundation

func function1() {
    // array of numbers
    let numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
    
    // create an array to collect square of every number
    var squares: [Int] = []
    for number in numbers {
        // get the square and append it to the squares
        squares.append(number * number)
    }
    print(numbers)
    print(squares)
}

//function1()

func function2() {
    // array of numbers
    let numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
    
    // going throgh all the numbers one by one
    // getting the square of them
    // appending them to the squares array
    let squares = numbers.map({ (number) in
        return number * number
    })
    
    print(numbers)
    print(squares)
}

//function2()


func function3() {
    // array of numbers
    let numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

    // get only even numbers
    let evenNumbers = numbers.filter({ (number) in
        return number % 2 == 0
    })
    
    print(numbers)
    print(evenNumbers)
}
   
//function3()

func function4() {
    // array of numbers
    let numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
    
    // square of only even numbers
    let squareEvenNumbers = numbers.filter({ number in
        return number % 2 == 0
    }).map ({ number in
        return number * number
    })
    
    // cube of only odd numbers
    let cubeOddNumbers = numbers.filter({ number in
        return number % 2 != 0
    }).map ({ number in
        return number * number * number
    })
    
    print(squareEvenNumbers)
    print(cubeOddNumbers)
}

//function4()


func function5() {
    func execute(function: (Int) -> Void) {
        print("inside execute function")
    }
    
    execute(function: { (p1: Int) -> Void in
        print("inside first closure")
    })
    
    execute(function: { (p1) -> Void in
        print("inside first closure")
    })
    
    execute(function: { p1 -> Void in
        print("inside first closure")
    })
    
    execute(function: { p1 in
        print("inside first closure")
    })
}

func function6() {
    let numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
    
    // numbers.map()
    // numbers.flatMap()
    // numbers.filter()
    // numbers.reduce()
        
    //numbers.sort(by: {(p1, p2) in
    //    return p1 > p2
    //})
}

