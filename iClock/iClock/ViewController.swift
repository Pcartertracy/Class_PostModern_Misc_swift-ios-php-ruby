//
//  ViewController.swift
//  iClock
//
//  Created by Phillip Carter-Tracy on 11/17/14.
//  Copyright (c) 2014 Phillip Carter-Tracy. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    

    @IBOutlet weak var currentTimeLb: UILabel!
    
    //let clock = Clock()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let timer = NSTimer.scheduledTimerWithTimeInterval(1, target:self, selector:"updateTimeLb", userInfo:nil, repeats:true)
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        updateTimeLb()
    }
    func updateTimeLb(){
        let timeFormatter = NSDateFormatter()
        timeFormatter.dateFormat = "HH:mm:ss a"
        let theTime = timeFormatter.stringFromDate(NSDate())
        currentTimeLb.text = theTime

    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

