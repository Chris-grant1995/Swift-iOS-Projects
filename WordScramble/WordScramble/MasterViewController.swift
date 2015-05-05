//
//  MasterViewController.swift
//  WordScramble
//
//  Created by Chris on 5/3/15.
//  Copyright (c) 2015 Chris. All rights reserved.
//

import UIKit

class MasterViewController: UITableViewController {

    var objects = [String]()
    var allWords = [String]()


    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .Add, target: self, action: "promptForAnswer")
        
        // Do any additional setup after loading the view, typically from a nib.
        if let startWordsPath = NSBundle.mainBundle().pathForResource("start", ofType: "txt"){
            if let startWords =  NSString(contentsOfFile: startWordsPath, usedEncoding: nil, error: nil){
                allWords = startWords.componentsSeparatedByString("\n") as! [String]
                
            }
            
        }
        else{
            allWords = ["silkworm"]
        }
        startGame()
    }
    func startGame()
    {
        allWords.shuffle()
        title = allWords[0]
        objects.removeAll(keepCapacity: true)
        tableView.reloadData()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    

    // MARK: - Segues


    // MARK: - Table View

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return objects.count
    }

    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath) as! UITableViewCell

        let object = objects[indexPath.row]
        cell.textLabel!.text = object
        return cell
    }

    


}

