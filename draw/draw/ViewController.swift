//
//  ViewController.swift
//  draw
//
//  Created by Phillip Carter-Tracy on 12/3/14.
//  Copyright (c) 2014 Phillip Carter-Tracy. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func touchesBegan(touches: NSSet, withEvent event: UIEvent) {
        if let touch = touches.anyObject() as? UITouch{
            let startPoint = touch.locationInView(self.view)
        }
    }
    override func touchesMoved(touches: NSSet, withEvent event: UIEvent) {
        if let touch = touches.anyObject() as? UITouch{
            let lastPoint = touch.locationInView(self.view)
        }
    }


}

