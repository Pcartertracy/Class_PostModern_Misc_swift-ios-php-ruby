//
//  CanvasView.swift
//  FingerPainter
//
//  Created by Phillip Carter-Tracy on 12/1/14.
//  Copyright (c) 2014 Phillip Carter-Tracy. All rights reserved.
//

import UIKit

class CanvasView: UIView {
  override func drawRect(rect: CGRect) {
        let context = UIGraphicsGetCurrentContext()
        CGContextSetStrokeColorWithColor(context, UIColor.redColor().CGColor)
        CGContextSetLineWidth(context, 10.0)
        CGContextBeginPath(context)
        CGContextMoveToPoint(context, 0.0, 0.0)
        CGContextAddLineToPoint(context, 0, self.frame.size.height)
        CGContextStrokePath(context)
    }
}

