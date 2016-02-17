//
//  ViewController.swift
//  TableViewExample
//
//  Created by Dhany Basuki on 14/2/16.
//  Copyright © 2016 Dhany. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    var array = [Todo]()
    
    @IBOutlet weak var tableView: UITableView!
    
    // MARK: Tableview data source methods
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return array.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("Cell")!
        cell.textLabel?.text = array[indexPath.row].name
        return cell
    }
    
    // MARK: TableView Delegate Methods
    
    func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        return true
    }
    
    func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            array.removeAtIndex(indexPath.row)
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: UITableViewRowAnimation.Left)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        array.append(Todo(name: "Eat Breakfast"))
        array.append(Todo(name: "Brush Teeth"))
        array.append(Todo(name: "Tie Shoes"))
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }


}

