//
//  Capital.swift
//  Project 16
//
//  Created by Mark LEDOUX  on 12/01/2020.
//  Copyright © 2020 Mark LEDOUX . All rights reserved.
//

import UIKit
import MapKit

class Capital: NSObject, MKAnnotation {
    var title: String?
    var coordinate: CLLocationCoordinate2D
    var info: String

    init(title: String, coordinate: CLLocationCoordinate2D, info: String) {
        self.title = title
        self.coordinate = coordinate
        self.info = info
    }

}
