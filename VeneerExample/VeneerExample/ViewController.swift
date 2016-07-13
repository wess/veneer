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
            make.Font(UIFont.boldSystemFontOfSize(32.0))
            make.BackgroundColor(.redColor())
            make.Color(.whiteColor())
            
        }

        label?.attributedText = attrString
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

