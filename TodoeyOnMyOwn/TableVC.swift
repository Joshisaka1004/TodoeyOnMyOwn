//
//  ViewController.swift
//  TodoeyOnMyOwn
//
//  Created by Joachim Vetter on 28.12.18.
//  Copyright © 2018 Joachim Vetter. All rights reserved.
//

import UIKit

class TableVC: UITableViewController {

    var myItems = ["Sudoku erstellen", "Ulysses Story anfangen", "W.-Plan am 02.01.19 beginnen"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return myItems.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let myCell = tableView.dequeueReusableCell(withIdentifier: "myCells", for: indexPath)
        myCell.textLabel?.text = myItems[indexPath.row]
        return myCell
    }

    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let mySelected = tableView.cellForRow(at: indexPath)
        if mySelected?.accessoryType == .checkmark {
            print("yeeeeeah")
            mySelected?.accessoryType = .none
        } else {
            mySelected?.accessoryType = .checkmark
        }
        
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
    @IBAction func addItem(_ sender: UIBarButtonItem) {
        
    }
    
}

