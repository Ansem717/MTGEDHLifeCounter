//
//  ViewController.swift
//  MTG EDH Life Counter
//
//  Created by Andy Malik on 2/13/16.
//  Copyright © 2016 AndyMalik. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {
    
    //MARK: Reference Variables
    var startLife: Int = 20
    var currPlayerLife: Int = 20
    var numberOfPlayers: Int = 2
    var buttonPositions: [[CGFloat]] = [[UIScreen.mainScreen().bounds.width/2-80, 85, CGFloat(M_PI), 160, 120], [UIScreen.mainScreen().bounds.width/2-80, UIScreen.mainScreen().bounds.height-230, 0.0, 160, 120]]
    
    //MARK: Inheritted Functions
    override func viewDidLoad() {
        super.viewDidLoad()
        setupMainView()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func setupMainView() {
        createLifeCounters()
    }
    
    func createLifeCounters() {
        if buttonPositions.count != numberOfPlayers {
            fatalError("Number of Button Positions and Number of Players do not match")
        }
        for position in buttonPositions {
            let thisLifeCounter = UIButton()
            thisLifeCounter.setTitle("20", forState: .Normal)
            thisLifeCounter.setTitleColor(UIColor.blackColor(), forState: .Normal)
            thisLifeCounter.layer.borderColor = UIColor.blackColor().CGColor
            thisLifeCounter.layer.borderWidth = 2.8
            thisLifeCounter.layer.cornerRadius = 10.0
            
            thisLifeCounter.addTarget(self, action: #selector(MainViewController.lifeButtonPressed(_:)), forControlEvents: .TouchUpInside)
            
            thisLifeCounter.frame = CGRectMake(position[0], position[1], position[3], position[4])
            thisLifeCounter.titleLabel?.font = UIFont.systemFontOfSize((position[3]+position[4])/3.5)
            thisLifeCounter.transform = CGAffineTransformMakeRotation(position[2])
            
            self.view.addSubview(thisLifeCounter)
        }
    }
    
    
    func lifeButtonPressed(sender: UIButton) {
        
    }
    
    
    //MARK: LifeCounter Functions
//    @IBAction func firstLifeDown(sender: UIButton, forEvent event: UIEvent) {
//        currPlayerLife -= 1
//        sender.setTitle("\(currPlayerLife)", forState: .Normal)
//        if currPlayerLife < 1 {
//            firstLifeButton.layer.borderColor = UIColor(red: 1.0, green: 0.0, blue: 0.0, alpha: 0.5).CGColor
//            firstLifeButton.setTitleColor(UIColor(red: 1.0, green: 0.0, blue: 0.0, alpha: 0.5), forState: .Normal)
//            firstLifeButton.enabled = false
//        }
//    }
    
    //MARK: TAB FUNCTIONS
    @IBAction func newGame(sender: UIBarButtonItem) {
        //Restart game
    }
    
    @IBAction func howToUse(sender: UIBarButtonItem) {
        performSegueWithIdentifier("HOWTOSegue", sender: nil);
    }
    
    @IBAction func settingsButton(sender: UIBarButtonItem) {
        performSegueWithIdentifier("SETTINGSSegue", sender: nil);
    }
    
    @IBAction func aboutButton(sender: UIBarButtonItem) {
        performSegueWithIdentifier("ABOUTSegue", sender: nil);
    }
}

