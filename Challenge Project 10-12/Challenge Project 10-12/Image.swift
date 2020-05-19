//
//  Image.swift
//  Challenge Project 10-12
//
//  Created by Mark LEDOUX  on 29/12/2019.
//  Copyright © 2019 Mark LEDOUX . All rights reserved.
//

import UIKit

class Image: NSObject {
    var filename: String
    var caption: String

    init(filename: String, caption: String) {
        self.filename = filename
        self.caption = caption
    }
}
