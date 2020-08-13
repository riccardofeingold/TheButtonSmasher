//
//  ViewController.swift
//  TheButtonSmasher
//
//  Created by Riccardo Feingold on 12.08.20.
//  Copyright © 2020 Riccardo Feingold. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var smashLabel: UILabel!
    
    //the variable for how many times the button has been pressed
    var numberOfSmashes = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //retrieve data from .plist; Be sure that you use the same key string when saving and retriving the data otherwise you will get an error
        numberOfSmashes = UserDefaults.standard.integer(forKey: "smashes")

        smashLabel.text = "Smashes: \(numberOfSmashes)"
    }
    
    @IBAction func buttonSmashed(_ sender: UIButton) {
        //increase numberOfSmashes by 1
        numberOfSmashes += 1
        
        //Update UITextLabel
        smashLabel.text = "Smashes: \(numberOfSmashes)"
        
        //Save and update the number in the .plist file
        UserDefaults.standard.set(numberOfSmashes, forKey: "smashes")
    }
}

