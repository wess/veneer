//
//  ViewController.swift
//  VeneerExample
//
//  Created by Wesley Cope on 7/13/16.
//  Copyright © 2016 Wess Cope. All rights reserved.
//

import UIKit
import Veneer

class ViewController: UIViewController {
    @IBOutlet var label:UILabel?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let attrString = NSAttributedString(string: "Hello World") { make in
            make.font(UIFont.boldSystemFont(ofSize: 32.0))
            make.backgroundColor(.red)
            make.color(.white)
            
        }

        label?.attributedText = attrString
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

