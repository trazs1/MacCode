//
//  ViewController.swift
//  Postcard
//
//  Created by Duane Terrazas on 11/23/14.
//  Copyright (c) 2014 Traz. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var enterNameTextField: UITextField!
    @IBOutlet weak var enterMessageTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func sendMailButtonPressed(sender: UIButton) {
        messageLabel.hidden = false
        if !enterMessageTextField.text.isEmpty {
            messageLabel.text = enterMessageTextField.text
            enterMessageTextField.text = ""
            enterMessageTextField.resignFirstResponder()
        }
        else {
            messageLabel.text = "No Message Entered"
        }
    }
    
}

