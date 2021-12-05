//
//  ViewController.swift
//  DynamicCells
//
//  Created by Maha saad on 01/05/1443 AH.
//

import UIKit

class ViewController: UIViewController {
    
    var name = ["Maha" , "Hana" ,"Maya"]
    
    @IBOutlet weak var TaskTextField: UITextField!
    
    @IBOutlet weak var TableView: UITableView!
    
   
    
    @IBAction func BeastButonPressed(_ sender: UIButton) {
        
        name.append("\(TaskTextField.text!)")
        TableView.reloadData()
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        TableView.dataSource = self
    }
}
extension ViewController: UITableViewDataSource {
    // MAKE SURE THESE ARE WITHIN UITableViewDataSource EXTENSION!copy
    // How many cells are we going to need?
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // return an integer that indicates how many rows (cells) to dra
        return name.count
}
    // How should I create each cell?
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // Get the UITableViewCell and create/populate it with data then return it
        let cell = TableView.dequeueReusableCell(withIdentifier: "MyCell", for: indexPath)
        cell.textLabel?.text = name[indexPath.row]
        
        return cell
    }


}



