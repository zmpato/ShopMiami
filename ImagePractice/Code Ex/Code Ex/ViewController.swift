//
//  ViewController.swift
//  Code Ex
//
//  Created by Zach mills on 1/21/19.
//  Copyright © 2019 Zach mills. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    
    @IBOutlet weak var label: UILabel!
    @IBAction func button(_ sender: Any) {
        print("hey")
        label.text = "wassup!!"
    
        
    
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

