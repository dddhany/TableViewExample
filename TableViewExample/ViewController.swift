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

