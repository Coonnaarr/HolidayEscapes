//
//  File.swift
//  HolidayEscapes
//
//  Created by Connar Mordelt on 12.09.21.
//

import Foundation

struct Country: Comparable {
    
    let name: String
    var score = 0
    
    
    mutating func incrementScore() {
        self.score += 1
    }
    
    static func < (lhs: Country, rhs: Country) -> Bool {
        return lhs.score < rhs.score
    }
    

}

var countries = [Country(name:"uk"),
                 Country(name:"greece"),
                 Country(name:"italy"),
                 Country(name:"austria")]


