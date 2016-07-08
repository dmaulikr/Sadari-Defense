//
//  Lane.swift
//  Sadari Defense
//
//  Created by Matthew Tso on 7/7/16.
//  Copyright © 2016 Matthew Tso. All rights reserved.
//

import SpriteKit
import GameplayKit

/// Lane index
enum LaneIndex: Int {
    case Lane1 = 1
    case Lane2 = 2
    case Lane3 = 3
    case Lane4 = 4
    case Lane5 = 5
}

class LaneEntity: GKEntity {
    
    init(index: LaneIndex, frame: CGRect) {
        super.init()
        
        var height: CGFloat
        switch index.rawValue {
        case 2...4:
            height = frame.height * 0.8
        case 1, 5:
            height = frame.height
        default:
            print("Error: No lane at index \(index.rawValue).")
            return
        }
        
        let spriteNode = SKSpriteNode(color: UIColor.black(), size: CGSize(width: 2, height: height))
        
        addComponent(SpriteComponent(spriteNode: SKSpriteNode()))
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
