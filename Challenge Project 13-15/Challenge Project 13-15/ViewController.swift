//
//  ViewController.swift
//  Challenge Project 13-15
//
//  Created by Mark LEDOUX  on 10/01/2020.
//  Copyright © 2020 Mark LEDOUX . All rights reserved.
//

import UIKit

class ViewController: UITableViewController {
    var country = [Country]()
    var storedCountry = [Country]()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        title = "Country Facts"
        navigationController?.navigationBar.prefersLargeTitles = true
        
        let urlString: String
        
        if navigationController?.tabBarItem.tag == 0 {
            urlString = "https://www.hackingwithswift.com/samples/petitions-1.json"
        } else {
            urlString = "https://www.hackingwithswift.com/samples/petitions-2.json"
        }
        
        if let url = URL(string: urlString) {
            if let data = try? Data(contentsOf: url) {
                parse(json: data)
                return
            }
        }
    }
    
    func parse(json: Data) {
        let decoder = JSONDecoder()
        
        if let jsonFacts = try? decoder.decode(Countries.self, from: json) {
            country = jsonFacts.results
            tableView.reloadData()
        }
    }

    override func numberOfSections(in tableView: UITableView) -> Int {
        return country.count
        
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        
        let countries = country[indexPath.row]
        cell.textLabel?.text = countries.name
        cell.detailTextLabel?.text = countries.capital
        
        return cell
    }

}



