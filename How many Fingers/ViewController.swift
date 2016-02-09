//
//  ViewController.swift
//  How many Fingers
//
//  Created by Adrian Knapp on 2/9/16.
//  Copyright © 2016 PIGStudio. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var userGuessTextField: UITextField!
    
    @IBOutlet var UserResponseLabel: UILabel!
    
    @IBAction func guessBtn(sender: AnyObject) {
        
        let finger = String(arc4random_uniform(6))
        print(finger)
    
        if finger == userGuessTextField.text {
            
            UserResponseLabel.text = "You are correct!"
            
        }else{
            UserResponseLabel.text = "Sorry it was " + finger
        }
        
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

