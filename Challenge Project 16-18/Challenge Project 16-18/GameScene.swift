//
//  GameScene.swift
//  Challenge Project 16-18
//
//  Created by Mark LEDOUX  on 29/01/2020.
//  Copyright © 2020 Mark LEDOUX . All rights reserved.
//

import SpriteKit
import GameplayKit

class GameScene: SKScene {
    var targets = [Target]()
    var gameScore: SKLabelNode!

    var popupTime = 0.85
    var numRounds = 0

    var score = 0 {
        didSet {
            gameScore.text = "Score: \(score)"
        }
    }

    override func didMove(to view: SKView) {
        let background = SKSpriteNode(imageNamed: "wood-background")
        background.position = CGPoint(x: 512, y: 384)
        background.blendMode = .replace
        background.zPosition = -1
        addChild(background)

        gameScore = SKLabelNode(fontNamed: "Chalkduster")
        gameScore.text = "Score: \(score)"
        gameScore.position = CGPoint(x: 8, y: 8)
        gameScore.horizontalAlignmentMode = .left
        gameScore.fontSize = 48
        addChild(gameScore)
    }

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        }

    func createTarget(at position: CGPoint) {
        let target = Target()
        target.configure(at: position)
        addChild(target)
        targets.append(target)
    }

    func createEnemy() {
        numRounds += 1

        if numRounds >= 30 {
            for target in targets {
                target.hide()
            }

            let gameOver = SKSpriteNode(imageNamed: "game-over")
            gameOver.position = CGPoint(x: 512, y: 384)
            gameOver.zPosition = 1
            addChild(gameOver)
            gameScore.text = "Final score: \(score)"
            return
        }

        popupTime *= 0.991

        targets.shuffle()

    }
}
