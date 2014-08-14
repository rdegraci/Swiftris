//
//  Array2D.swift
//  Swiftris
//
//  Created by Rodney Degracia on 8/13/14.
//  Copyright (c) 2014 Patrick Cleary. All rights reserved.
//

import Foundation

class Array2D<T> {
    let columns: Int
    let rows: Int
    
    var array: Array<T?>   // allow type nil
    
    init(columns: Int, rows: Int) {
        self.columns = columns
        self.rows = rows
        
        array = Array<T?>(count: columns * rows, repeatedValue: nil)
    }
    
    func aa() {
    
    }
    
    subscript(column: Int, row: Int)->T? {
        get {
            return array[(row * column) + column]
        }
        
        set(newValue) {
            array[(row * column) + column] = newValue
        }
    }
}

// Fun and Games with using !
class A {
    
    let columns: Int
    let rows: Int
    
    var array: Array<Int?>!
    
    init(columns: Int, rows: Int) {
        self.columns = columns
        self.rows = rows
        
        self.array = Array<Int?>(count: columns * rows, repeatedValue: nil)
    }
    
    func aa() {
        
    }
    
    subscript(column: Int, row: Int)->Int {
        get {
            return self.array[(row * column) + column]!
        }
        
        set(newValue) {
            array[(row * column) + column] = newValue
        }
    }
}