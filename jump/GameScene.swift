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
    }
    
    
    //touch dectection
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        //to apply the impulse we need a physics body
        let jumpAction = SKAction.applyImpulse(CGVector(dx: 0, dy: 4000), duration: 0.5)
        
        self.robot!.run(jumpAction)
        
    }
}
