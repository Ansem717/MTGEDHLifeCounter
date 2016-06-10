//
//  SettingsViewController.swift
//  MTG EDH Life Counter
//
//  Created by Andy Malik on 3/10/16.
//  Copyright © 2016 AndyMalik. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @IBAction func cancelButtonPressed(sender: UIBarButtonItem) {
        dismissViewControllerAnimated(true, completion: nil)
    }

    @IBAction func saveButtonPressed(sender: AnyObject) {
    }
    
}
