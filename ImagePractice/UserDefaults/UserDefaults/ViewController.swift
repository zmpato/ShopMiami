//
//  ViewController.swift
//  UserDefaults
//
//  Created by Zach mills on 5/22/19.
//  Copyright © 2019 Zach mills. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var entry: UITextField!
    
    @IBAction func save(_ sender: Any) {
        
        UserDefaults.standard.set(entry.text, forKey: "number")
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        let numberObject = UserDefaults.standard.object(forKey: "number")
        if let number = numberObject as? String {
            
            entry.text = number
            
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

