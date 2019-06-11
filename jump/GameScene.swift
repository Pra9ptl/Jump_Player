//
//  GameScene.swift
//  jump
//
//  Created by MacStudent on 2019-06-11.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import SpriteKit
import GameplayKit

class GameScene: SKScene {
    
    
    //make  outlets for all components
    var robot:SKNode?
    var poop:SKNode?
    var ground:SKNode?
    
    override func didMove(to view: SKView) {
        self.robot = SKSpriteNode(imageNamed: "robot")
        self.poop = self.childNode(withName: "poop")
        self.ground = SKSpriteNode(imageNamed: "ground")
    }
}
