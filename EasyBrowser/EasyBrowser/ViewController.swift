//
//  ViewController.swift
//  EasyBrowser
//
//  Created by Chris on 5/3/15.
//  Copyright (c) 2015 Chris. All rights reserved.
//

import UIKit
import WebKit

class ViewController: UIViewController, WKNavigationDelegate {
    var webView : WKWebView!
    var websites = ["apple.com", "slashdot.org"]
    override func loadView() {
        webView = WKWebView()
        webView.navigationDelegate = self
        view = webView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let url = NSURL(string: "http://google.com")!
        webView.loadRequest(NSURLRequest(URL:url))
        webView.allowsBackForwardNavigationGestures = true
        
        navigationItem.rightBarButtonItem = UIBarButtonItem(title:"Open", style:.Plain, target: self, action:"openTapped")
        
        
        
    }
    
    func openTapped() {
        let ac = UIAlertController(title: "Open page…", message: nil, preferredStyle: .ActionSheet)
        
        for website in websites {
            //ac.addAction(UIAlertAction(title: website, style: .Default, handler: openPage))
            //ac.addAction(UIAlertAction(title: website, style: .Default, handler: openPage))
            var action = UIAlertAction(website, UIAlertActionStyle.Default, openPage)
        }
        
        ac.addAction(UIAlertAction(title: "Cancel", style: .Cancel, handler: nil))
        presentViewController(ac, animated: true, completion: nil)
    }
    func openPage(action:UIAlertAction)
    {
        let url = NSURL(string: "http://" + action.title)!
        webView.loadRequest(NSURLRequest(URL: url))
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

