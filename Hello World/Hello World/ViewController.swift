//
//  ViewController.swift
//  Hello World
//
//  Created by Chris on 4/12/15.
//  Copyright (c) 2015 Chris. All rights reserved.
//

import Cocoa

class ViewController: NSViewController {

    
    @IBOutlet weak var tf: NSTextField!
    
    @IBOutlet weak var label: NSTextField!

    @IBAction func Button(sender: AnyObject) {
      label.stringValue = "Hello " + tf.stringValue
        
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override var representedObject: AnyObject? {
        didSet {
        // Update the view, if already loaded.
        }
    }


}

