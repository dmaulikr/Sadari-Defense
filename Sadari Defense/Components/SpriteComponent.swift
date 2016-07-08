//
//  SpriteComponent.swift
//  Sadari Defense
//
//  Created by Matthew Tso on 7/7/16.
//  Copyright © 2016 Matthew Tso. All rights reserved.
//

import SpriteKit
import GameplayKit

class SpriteComponent: GKComponent {
    
    let node: SKSpriteNode
    
    var position: CGPoint {
        didSet {
            node.position = self.position
        }
    }
    
    init(spriteNode: SKSpriteNode) {
        node = spriteNode
        position = node.position
        super.init()
    }
    
    init(texture: SKTexture) {
        node = SKSpriteNode(texture: texture, color: UIColor.black(), size: texture.size())
        position = node.position
        super.init()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
