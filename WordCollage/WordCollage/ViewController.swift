//
//  ViewController.swift
//  WordCollage
//
//  Created by Phillip Carter-Tracy on 11/10/14.
//  Copyright (c) 2014 Phillip Carter-Tracy. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func changeBackground(sender:UIButton){
        if sender.tag == 1{
            self.view.backgroundColor = UIColor.blackColor()
            label.text = "Cyan"
        }
        else if sender.tag == 2 {
            self.view.backgroundColor = UIColor.cyanColor()
            label.text = "Black"
        }
        else if sender.tag == 3 {
            self.view.backgroundColor = UIColor.blueColor()
            label.text = "Blue"
        }
    }
    
}

