//
//  ViewController.swift
//  Table View
//
//  Created by Zach mills on 5/14/19.
//  Copyright © 2019 Zach mills. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
                // command-click ^^^^ uiviewdelegate and datasource and highlight/paste rownsinsection and cellForRowAt below
    
                                //    change public to internal
    
    internal func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
      
        
                        //        organizes cells from number 1 to 50
        
        
        
        
        return 50
        
    }
    
    
   
    internal func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
                //  "cell" is the name of identifier of the cell on storyboard
        
        let cell = UITableViewCell(style: UITableViewCellStyle.default, reuseIdentifier: "Cell")
        
            cell.textLabel?.text = String(indexPath.row + 1)
                return cell
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

