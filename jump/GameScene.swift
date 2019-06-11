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
        self.robot = self.childNode(withName: "robot")
        self.poop = self.childNode(withName: "poop")
        self.ground = self.childNode(withName: "ground")
        
        // mkae the poop move back and forth
        
        //------------------------------------
        
        // 1. mkae your SKAction
        
        let m1 = SKAction.moveTo(x: -500, duration: 2)
        let m2 = SKAction.moveTo(x: 400, duration: 2)
        
        // 2. put sction into a sequence
        let sequence = SKAction.sequence([m1,m2])
        
        // 3. apply sequence to sprite
        self.poop?.run(SKAction.repeatForever(sequence))
    }
    
    
    //touch dectection
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        //to apply the impulse we need a physics body
        let jumpAction = SKAction.applyImpulse(CGVector(dx: 0, dy: 3500), duration: 0.2)
        //jump is control in 3 ways
        // 1. cahnge the mass
        // 2. Change size (height/width)
        // 3. Change force that is applied (CGVector)
        self.robot!.run(jumpAction)
        
    }
}
