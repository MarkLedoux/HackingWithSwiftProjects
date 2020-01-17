//
//  Country.swift
//  Challenge Project 13-15
//
//  Created by Mark LEDOUX  on 10/01/2020.
//  Copyright © 2020 Mark LEDOUX . All rights reserved.
//

import Foundation

struct Country: Codable {
    var name: String
    var capital: String
    var officialLanguage: String
    var mainReligion: String
    var headOfState: String
    var area: Int
    var population: Int
    var currency: String
}
