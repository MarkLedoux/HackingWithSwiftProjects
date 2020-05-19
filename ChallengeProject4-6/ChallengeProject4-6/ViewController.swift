//
//  ViewController.swift
//  ChallengeProject4-6
//
//  Created by Mark LEDOUX  on 08/12/2019.
//  Copyright © 2019 Mark LEDOUX . All rights reserved.
//

import UIKit

class ViewController: UITableViewController {

    var shoppingList = [String]()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.

        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(promptForItem))
        loadList()
    }

    func loadList() {
        title = "Shopping List"
        tableView.reloadData()
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
           return shoppingList.count
       }

       override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
           let cell = tableView.dequeueReusableCell(withIdentifier: "Word", for: indexPath)
           cell.textLabel?.text = shoppingList[indexPath.row]
           return cell
       }

    @objc func promptForItem() {
        let ac = UIAlertController(title: "Add to List", message: nil, preferredStyle: .alert)
        ac.addTextField()

        let submitAction = UIAlertAction(title: "Submit", style: .default) {
            [weak self, weak ac] _ in
            guard let answer = ac?.textFields?[0].text else { return }
            self?.submit(answer)
        }
        ac.addAction(submitAction)
        present(ac, animated: true)

    }

    func submit(_ answer: String) {
        _ = answer.lowercased()
        shoppingList.insert(answer, at: 0)

        let indexPath = IndexPath(row: 0, section: 0)
        tableView.insertRows(at: [indexPath], with: .automatic)

        return
    }

}
