//
//  DetailViewController.swift
//  Storm Viewer
//
//  Created by Chris on 5/1/15.
//  Copyright (c) 2015 Chris. All rights reserved.
//

import UIKit
import Social

class DetailViewController: UIViewController {


    @IBOutlet weak var detailImageView: UIImageView!
    var detailItem: String? {
        didSet {
            // Update the view.
            self.configureView()
        }
    }

    func configureView() {
        // Update the user interface for the detail item.
        if let detail: String = self.detailItem {
			self.title = detail
            if let imageView = self.detailImageView {
                imageView.image = UIImage(named:detail)
            }
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.configureView()
		navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .Action, target: self, action: "shareTapped")
    }
	override func viewWillAppear(animated: Bool) {
		super.viewWillAppear(animated)
		navigationController?.hidesBarsOnTap = true
	}
	
	override func viewWillDisappear(animated: Bool) {
		super.viewWillDisappear(animated)
		navigationController?.hidesBarsOnTap = false
	}
	func shareTapped()
	{
		let vc2 = UIActivityViewController(activityItems:[detailImageView.image!],applicationActivities:[])
		presentViewController(vc2, animated: true, completion: nil)
		
		
	}
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

