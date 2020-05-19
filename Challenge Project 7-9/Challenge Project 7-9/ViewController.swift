//
//  ViewController.swift
//  Challenge Project 7-9
//
//  Created by Mark LEDOUX  on 16/12/2019.
//  Copyright © 2019 Mark LEDOUX . All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var answersLabel: UILabel!
    var currentAnswer: UITextField!
    var scoreLabel: UILabel!
    var tryLabel: UILabel!
    var letterButtons = [UIButton]()

    var activatedButton = [UIButton]()
    var solutions = [String]()

    var attempts = 7 {
        didSet {
            tryLabel.text = "Attempts Left: \(attempts)"
        }
    }

    var score = 0 {
        didSet {
            scoreLabel.text = "Score: \(score)"
        }
    }

    override func loadView() {
        view = UIView()
        view.backgroundColor = .white

        scoreLabel = UILabel()
        scoreLabel.translatesAutoresizingMaskIntoConstraints = false
        scoreLabel.textAlignment = .right
        scoreLabel.text = "Score: 0"
        view.addSubview(scoreLabel)

        answersLabel = UILabel()

    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

}
