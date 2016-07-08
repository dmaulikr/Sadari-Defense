//
//  EntityManager.swift
//  Sadari Defense
//
//  Created by Matthew Tso on 7/7/16.
//  Copyright © 2016 Matthew Tso. All rights reserved.
//

import Foundation
import SpriteKit
import GameplayKit

class EntityManager {
    
    var entities = Set<GKEntity>()
    let scene: SKScene
    var toRemove = Set<GKEntity>()
    
    lazy var componentSystems: [GKComponentSystem] = {
        let laneSystem = GKComponentSystem(componentClass: LaneComponent.self)
        let towerSystem = GKComponentSystem(componentClass: TowerComponent.self)
        return [laneSystem, towerSystem]
    }()
    
    init(scene: SKScene) {
        self.scene = scene
    }
}

