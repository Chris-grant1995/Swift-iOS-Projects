//
//  ViewController.swift
//  BasicInteraction
//
//  Created by Chris on 2/7/15.
//  Copyright (c) 2015 Chris Grant. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var simpleLabel: UILabel!
    
    @IBOutlet weak var simpleTF: UITextField!
    
    @IBAction func changeLabel(sender: AnyObject) {
            simpleLabel.text = "Hello, " + simpleTF.text + "!"
            self.simpleTF.resignFirstResponder()
    }
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        textField.resignFirstResponder();
        return falseq
    }
    override func touchesBegan(touches: NSSet, withEvent event: UIEvent) {
        self.view.endEditing(true)
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

