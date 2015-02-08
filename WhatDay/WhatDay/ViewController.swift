//
//  ViewController.swift
//  WhatDay
//
//  Created by Chris on 2/7/15.
//  Copyright (c) 2015 Chris Grant. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var date: UIDatePicker!
    @IBAction func calcDate(sender: AnyObject) {
       var chosenDate=date.date
        
       var formatter=NSDateFormatter()
        formatter.dateFormat = "EEEE"
        let day = formatter.stringFromDate(chosenDate)
        var result = "It was a \(day)"
        
        let myAlert = UIAlertController(title: result, message: nil, preferredStyle: UIAlertControllerStyle.Alert)
        myAlert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.Default, handler: nil))
        self.presentViewController(myAlert, animated: true, completion: nil)
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

