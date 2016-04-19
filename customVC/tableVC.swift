//
//  tableVC.swift
//  customVC
//
//  Created by Akash Verma on 15/04/16.
//  Copyright © 2016 shubham verma. All rights reserved.
//

import Foundation
import UIKit

class tableVC: UITableViewController {
    
    var Array = [String]()
    
    override func viewDidLoad() {
        
        Array = ["Shubham","shubh","elements","Sushobhit","rows","overview","element 2","so on...."]
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Array.count
    }
    
    
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath) as! UITableViewCell
        
        cell.textLabel?.text = Array[indexPath.row]
        
        return cell
        
    }
}

