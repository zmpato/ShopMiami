//
//  ViewController.swift
//  Number Generator
//
//  Created by Zach mills on 2/12/19.
//  Copyright © 2019 Zach mills. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var fingersText: UITextField!
    
    @IBAction func guess(_ sender: AnyObject) {
    
    let diceRoll = String (arc4random_uniform(6))
        if fingersText.text == diceRoll {
            resultLabel.text = "Ur Right"
        }
        else {resultLabel.text = "wrong, it was " + diceRoll + "."}
    }
    
    
    @IBOutlet weak var resultLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

