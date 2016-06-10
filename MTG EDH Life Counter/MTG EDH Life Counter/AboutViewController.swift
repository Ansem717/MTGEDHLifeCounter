//
//  AboutViewController.swift
//  MTG EDH Life Counter
//
//  Created by Andy Malik on 3/10/16.
//  Copyright © 2016 AndyMalik. All rights reserved.
//

import UIKit

class AboutViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func closeViewButtonPressed(sender: UIBarButtonItem) {
        dismissViewControllerAnimated(true, completion: nil);
    }

}
