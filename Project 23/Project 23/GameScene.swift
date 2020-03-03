//
//  GameScene.swift
//  Project 23
//
//  Created by Mark LEDOUX  on 03/03/2020.
//  Copyright © 2020 Mark LEDOUX . All rights reserved.
//

import SpriteKit

class GameScene: SKScene {
    
    var gameScore: SKLabelNode!
    var score = 0 {
        didSet {
            gameScore.text = "Score: \(score)"
        }
    }
    var liveImages = [SKSpriteNode]()
    var lives = 3
    
    override func didMove(to view: SKView) {
        let background = SKSpriteNode(imageNamed: "sliceBackground")
        background.position = CGPoint(x: 512, y: 384)
        background.blendMode = .replace
        background.zPosition = -1
        addChild(background)
        
        physicsWorld.gravity = CGVector(dx: 0, dy: -6)
        physicsWorld.speed = 0.85
        
        createScore()
        createLives()
        createSlices()
    }
    
    func createScore() {
        
    }
    
    func createLives() {
        
    }
    
    func createSlices() {
        
    }
}
