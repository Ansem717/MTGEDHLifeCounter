//
//  ViewController.swift
//  MTG EDH Life Counter
//
//  Created by Andy Malik on 2/13/16.
//  Copyright © 2016 AndyMalik. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {
    
    //MARK: STORYBOARD CONNECTION
    
    @IBOutlet weak var firstLifeButton: UIButton!
    
    //MARK: INITIAL VARIABLES
    
    var startLife: Int = 20
    var currPlayerLife: Int = 20
    
    //MARK: MAIN FUNCTIONS
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupMainView()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func setupMainView() {
        firstLifeButton.layer.borderColor = UIColor.blackColor().CGColor
        firstLifeButton.layer.borderWidth = 2.8
        firstLifeButton.layer.cornerRadius = 10.0
        firstLifeButton.transform = CGAffineTransformMakeRotation(CGFloat(M_PI))
        print(startLife)
        print(firstLifeButton.titleLabel?.text)
        firstLifeButton.titleLabel?.text = "\(startLife)"
        print(startLife)
        print(firstLifeButton.titleLabel?.text)
    }
    
    //MARK: LIFECOUNTER FUNCTIONS
    
    @IBAction func firstLifeDown(sender: UIButton, forEvent event: UIEvent) {
        currPlayerLife -= 1
        if currPlayerLife > 0
        {
            sender.titleLabel?.text = "\(currPlayerLife)"
        } else {
            firstLifeButton.layer.borderColor = UIColor.grayColor().CGColor
        }
    }
    
    //MARK: TAB FUNCTIONS
    @IBAction func newGame(sender: UIBarButtonItem) {
        //Restart game
    }
    
    @IBAction func howToUse(sender: UIBarButtonItem) {
        //Link to InstructionViewController
    }
    
    @IBAction func settingsButton(sender: UIBarButtonItem) {
        //Link to SettingsViewcontroller
    }
    
    @IBAction func aboutButton(sender: UIBarButtonItem) {
        //Link to AboutViewController
    }
}

