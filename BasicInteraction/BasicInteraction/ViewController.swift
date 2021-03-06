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
    @IBOutlet var activityIndicatorView: UIActivityIndicatorView?
    var client: Sweather?
    @IBAction func changeLabel(sender: AnyObject) {
            //simpleLabel.text = "Hello, " + simpleTF.text + "!"
            textFieldShouldReturn(simpleTF)
    }
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        textField.resignFirstResponder();
        return false
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
    func textFieldShouldReturn(textField: UITextField!) -> Bool {
        if !textField.text.isEmpty {
            client?.apiKey = "9a85132f8556b342ab717a512c7386b9"
            simpleTF?.text = ""
            textField.resignFirstResponder()
            activityIndicatorView?.hidden = false;
            client?.currentWeather(textField.text) { result in
                self.activityIndicatorView?.hidden = true;
                switch result {
                case .Error(let response, let error):
                    self.simpleLabel?.text = "Some error occured. Try again."
                case .Success(let response, let dictionary):
                    self.simpleLabel?.text = "Received data: \(dictionary)"
                    
                    // Get temperature for city this way
                    let city = dictionary["name"] as? String;
                    let temperature = dictionary["main"]!["temp"] as Int;
                    println("City: \(city) Temperature: \(temperature)")
                }
            }
            return true
        }
        return false
    }

}

