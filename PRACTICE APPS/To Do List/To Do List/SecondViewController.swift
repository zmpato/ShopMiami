//
//  SecondViewController.swift
//  To Do List
//
//  Created by Zach mills on 5/25/19.
//  Copyright © 2019 Zach mills. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var tableView: UITextField!
    
    var tableData: [String] = ["dog", "Cat"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
       
    }
    
    
    @IBAction func addItem(_ sender: Any) {}
    
    extension FirstViewController: UITextFieldDelegate, UITableViewDataSource 
    
    
    
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

