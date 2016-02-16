//
//  ViewController.swift
//  FingerPainter
//
//  Created by Phillip Carter-Tracy on 12/1/14.
//  Copyright (c) 2014 Phillip Carter-Tracy. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    var origin: CGPoint = CGPoint()
    
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
            self.origin = touch.locationInView(self.view)
        }
    }
    override func touchesMoved(touches: NSSet, withEvent event: UIEvent) {
        if let touch = touches.anyObject() as? UITouch{
            let lastPoint = touch.locationInView(self.view)
            drawLineFrom(self.origin, lastpoint)
            self.origin = lastPiont
        }
    }
    func drawLineFrom(from: CGPoint, to: CGPoint) {
        UIGraphicsBeginImageContext(self.canvas.frame.size)
        let context = UIGraphicsGetCurrentContext()
        self.canvas.image?.drawInRect(CGRect(x: 0, y: 0, width: self.canvas.frame.size.width, height: self.canvas.frame.size.height))
        CGContextSetStrokeColorWithColor(context, UIColor.redColor().CGColor)
        
        
    }
}

