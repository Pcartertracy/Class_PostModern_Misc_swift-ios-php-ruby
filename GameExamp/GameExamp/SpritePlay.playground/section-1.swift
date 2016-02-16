// Playground - noun: a place where people can play

import SpriteKit
import XCPlayground

let size = CGSize(width: 300, height: 300)
let scene = SKScene(size: size)
let node = SKSpriteNode()
node.color = SKColor(red: 0.5, green: 0.3, blue: 0.3, alpha: 0.7)

node.size = CGSize(width: 50, height: 50)
node.position = CGPoint(x: 300/2, y: 300/2)

scene.addChild(node)
let view = SKView(frame: CGRect(x: 0, y: 0, width: 300, height: 300))


view.presentScene(scene)

XCPShowView("Sample View", view)


