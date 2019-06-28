//
//  ViewController.swift
//  codex
//
//  Created by Zach mills on 1/21/19.
//  Copyright © 2019 Zach mills. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textField: UILabel!
    @IBAction func buttonClick(_ sender: Any) {
        
        print("hey")
        label.text = textField.text
        
    }
    @IBOutlet weak var label: UILabel!
    
    
    
 
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

