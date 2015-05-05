//
//  ViewController.swift
//  LittleWins
//
//  Created by Chris on 5/5/15.
//  Copyright (c) 2015 CheatTheClock. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    let now = NSDate()
    let calendar = NSCalendar.currentCalendar()
    
    @IBOutlet weak var date: UILabel!

    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        getDate()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func getDate()
    {
        switch (now.weekday){
        case 1:
            date.text = "Sunday"
        case 2:
            date.text = "Monday"
        case 3:
            date.text = "Tuesday"
        case 4:
            date.text = "Wednesday"
        case 5:
            date.text = "Thursday"
        case 6:
            date.text = "Friday"
        case 7:
            date.text = "Saturday"
        default:
            date.text = "Error"
        }
        
        switch (now.month)
        {
        case 1:
            date.text = "\(date.text!), January"
        case 2:
            date.text = "\(date.text!), Feburary"
        case 3:
            date.text = "\(date.text!), March"
        case 4:
            date.text = "\(date.text!), April"
        case 5:
            date.text = "\(date.text!), May"
        case 6:
            date.text = "\(date.text!), June"
        case 7:
            date.text = "\(date.text!), July"
        case 8:
            date.text = "\(date.text!), August"
        case 9:
            date.text = "\(date.text!), September"
        case 10:
            date.text = "\(date.text!), Octotober"
        case 11:
            date.text = "\(date.text!), November"
        case 12:
            date.text = "\(date.text!), December"
            
        default:
            date.text = "\(date.text!), Error"
        }
        date.text = " \(date.text!) \(now.day)"
    }


}

