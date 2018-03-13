//
//  Wage.swift
//  savings
//
//  Created by Adrian Setniewski on 13.03.2018.
//  Copyright © 2018 Adrian Setniewski. All rights reserved.
//

import Foundation
class Wage {
    // same as static method in Java, C++ etc.
    class func getHours(forWage wage: Double, andPrice price: Double) -> Int {
        return Int( ceil( price / wage ) )
    }
}
