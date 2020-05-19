//
//  ViewController.swift
//  Project 12
//
//  Created by Mark LEDOUX  on 25/12/2019.
//  Copyright © 2019 Mark LEDOUX . All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.

        let defaults = UserDefaults.standard

        defaults.set(29, forKey: "Age")
        defaults.set(true, forKey: "UseFaceID")
        defaults.set(CGFloat.pi, forKey: "Pi")

        defaults.set("Mark LEDOUX", forKey: "Name")
        defaults.set(Date(), forKey: "LastRun")

        let array = ["Hello", "World"]
        defaults.set(array, forKey: "SavedArray")

        let dict = ["Name": "Mark", "Country": "France"]
        defaults.set(dict, forKey: "SavedDictionary")

        let savedInteger  = defaults.integer(forKey: "Age")
        let savedBoolean  = defaults.bool(forKey: "UseFaceID")
        let savedArray = defaults.object(forKey: "SavedArray") as? [String] ?? [String]()
    }

}
